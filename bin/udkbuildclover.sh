#!/bin/bash

# Update Clover source 
cd ~/src/UDK2018/Clover/ && svn update 
cd .. && make -C BaseTools/Source/C 
cd Clover/ && ./ebuild.sh -fr 
cd 

# Update AptioFixPkg source and build 
if [ ! -d ~/AptioFixPkg ] ; then
	git clone https://github.com/vit9696/AptioFixPkg 
fi 
cd ~/AptioFixPkg/ && git pull 

# Build AptioFixPkg by custom macbuild.tool 
~/AptioFixPkg/macbuild.tool 

# Copy .efi driver to Clover source dir 
cp ~/driverefi/apfs.efi ~/src/UDK2018/Clover/CloverPackage/CloverV2/drivers-Off/drivers64UEFI/ 
cp ~/driverefi/NTFS.efi ~/src/UDK2018/Clover/CloverPackage/CloverV2/drivers-Off/drivers64UEFI/ 
cp ~/driverefi/HFSPlus.efi ~/src/UDK2018/Clover/CloverPackage/CloverV2/drivers-Off/drivers64UEFI/ 
cp ~/AptioFixPkg/UDK/Build/AptioFixPkg/RELEASE_XCODE5/X64/Aptio*.efi ~/src/UDK2018/Clover/CloverPackage/CloverV2/drivers-Off/drivers64UEFI/ 

cp ~/driverefi/apfs-64.efi ~/src/UDK2018/Clover/CloverPackage/CloverV2/drivers-Off/drivers64/ 
cp ~/driverefi/NTFS-64.efi ~/src/UDK2018/Clover/CloverPackage/CloverV2/drivers-Off/drivers64/ 
cp ~/driverefi/HFSPlus-64.efi ~/src/UDK2018/Clover/CloverPackage/CloverV2/drivers-Off/drivers64/ 

# Make iso and pkg 
cd ~/src/UDK2018/Clover/CloverPackage/ && ./makepkg && ./makeiso 
