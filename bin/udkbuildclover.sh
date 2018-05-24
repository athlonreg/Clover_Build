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

# Custom macbuild.tool 
cp ~/AptioFixPkg/macbuild.tool ~/AptioFixPkg/macbuild.tool.bak  
col=`awk 'END{print NR}' ~/AptioFixPkg/macbuild.tool` 
update1=$(cat -n ~/AptioFixPkg/macbuild.tool | grep updaterepo | grep https://github.com/tianocore/edk2 | cut -b 5,6) 
((update2=$update1-1)) 
((update3=$update1+1)) 

sed -n "1,${update2}p" ~/AptioFixPkg/macbuild.tool > ~/AptioFixPkg/tmp.txt 
echo -e " 
if [ ! -d ~/AptioFixPkg/UDK ]; then 
	mkdir UDK && cp -R ~/src/UDK2018/ ~/AptioFixPkg/UDK/ 
	rm -rf ~/AptioFixPkg/UDK/Clover/ 
	cd ~/AptioFixPkg/UDK/ && git pull 
fi 

" >> ~/AptioFixPkg/tmp.txt 
sed -n "${update3},${col}p" ~/AptioFixPkg/macbuild.tool >> ~/AptioFixPkg/tmp.txt 
cat ~/AptioFixPkg/tmp.txt > ~/AptioFixPkg/macbuild.tool 

# Build AptioFixPkg by custom macbuild.tool 
~/AptioFixPkg/macbuild.tool 

# Restore macbuild.tool 
rm ~/AptioFixPkg/tmp.txt 
rm ~/AptioFixPkg/macbuild.tool 
mv ~/AptioFixPkg/macbuild.tool.bak ~/AptioFixPkg/macbuild.tool 

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
