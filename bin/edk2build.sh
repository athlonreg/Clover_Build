#!/bin/bash

# Variable 
EDK2_DIR=~/src/edk2_canvas/ 
BUILDTOOL="$XCODE" 

# Define source variable 
edk2array=(
	MdePkg
	MdeModulePkg
	CryptoPkg
	DuetPkg
	EdkCompatibilityPkg
	IntelFrameworkModulePkg
	IntelFrameworkPkg
	OvmfPkg
	OptionRomPkg
	PcAtChipsetPkg
	ShellPkg
	UefiCpuPkg
	BaseTools
)

# Define AptioFixPkg and dependencies
AptioFixDep=(
	AptioFixPkg
	"$EDK2_DIR"/AptioFixPkg/UDK/CupertinoModulePkg
	"$EDK2_DIR"/AptioFixPkg/UDK/EfiMiscPkg
	"$EDK2_DIR"/AptioFixPkg/UDK/EfiPkg
)

# Update source 
cd $EDK2_DIR && git pull  
svn update --ignore-externals --accept tf --non-interactive --trust-server-cert 

for d in "${edk2array[@]}"
do
	cd $d && svn update --ignore-externals --accept tf --non-interactive --trust-server-cert && cd ..
done

# Cleaning BaseTools and Clover / Clover Package
cd Clover && ./ebuild.sh cleanall -t $BUILDTOOL 
cd CloverPackage && make clean && cd .. 

export TOOLCHAIN_DIR=~/src/opt/local 
rm -rf $EDK2_DIR/Build/AptioFixPkg 

svn update --accept tf --non-interactive --trust-server-cert 

cp -R Patches_for_EDK2/* ../ 
cd .. && make -C BaseTools/Source/C 

# Update AptioFixPkg source and build 
cd $EDK2_DIR 
cd AptioFixPkg && git pull && cd .. 
for dd in "${AptioFixDep[@]}"
do
	cd ${dd} && svn update --ignore-externals --accept tf --non-interactive --trust-server-cert && cd ..
done

# Build AptioFixPkg by custom macbuild.tool 
cd $EDK2_DIR 
source edksetup.sh BaseTools 
make -C ./BaseTools CC="gcc -Wno-deprecated-declarations" 
# ncpu=$(( $(sysctl -n hw.logicalcpu) + 1 )) 
cd AptioFixPkg && ./macbuild.tool 
# build -a X64 -b RELEASE -t $BUILDTOOL -n $ncpu -p "$EDK2_DIR"/AptioFixPkg/AptioFixPkg.dsc 
cd "$EDK2_DIR"/Clover 

# Copy .efi driver to Clover source dir 
cp ~/driverefi/apfs.efi ~/src/edk2_canvas/Clover/CloverPackage/CloverV2/drivers-Off/drivers64UEFI/ 
cp ~/driverefi/NTFS.efi ~/src/edk2_canvas/Clover/CloverPackage/CloverV2/drivers-Off/drivers64UEFI/ 
cp ~/driverefi/HFSPlus.efi ~/src/edk2_canvas/Clover/CloverPackage/CloverV2/drivers-Off/drivers64UEFI/ 
cp ~/edk2_canvas/Build/AptioFixPkg/RELEASE_XCODE5/X64/AptioMemoryFix.efi ~/src/edk2_canvas/Clover/CloverPackage/CloverV2/drivers-Off/drivers64UEFI/ 
cp ~/edk2_canvas/Build/AptioFixPkg/RELEASE_XCODE5/X64/AptioInputFix.efi ~/src/edk2_canvas/Clover/CloverPackage/CloverV2/drivers-Off/drivers64UEFI/ 
cp ~/edk2_canvas/Build/AptioFixPkg/RELEASE_XCODE5/X64/CleanNvram.efi ~/src/edk2_canvas/Clover/CloverPackage/CloverV2/drivers-Off/drivers64UEFI/ 
cp ~/edk2_canvas/Build/AptioFixPkg/RELEASE_XCODE5/X64/VerifyMsrE2.efi ~/src/edk2_canvas/Clover/CloverPackage/CloverV2/drivers-Off/drivers64UEFI/ 

cp ~/driverefi/apfs-64.efi ~/src/edk2_canvas/Clover/CloverPackage/CloverV2/drivers-Off/drivers64/ 
cp ~/driverefi/NTFS-64.efi ~/src/edk2_canvas/Clover/CloverPackage/CloverV2/drivers-Off/drivers64/ 
cp ~/driverefi/HFSPlus-64.efi ~/src/edk2_canvas/Clover/CloverPackage/CloverV2/drivers-Off/drivers64/ 

# Make iso and pkg 
cd ~/src/edk2_canvas/Clover/CloverPackage/ && ./makepkg && ./makeiso 
