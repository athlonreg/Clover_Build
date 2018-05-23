#!/bin/bash

cd /Users/`whoami`/src/UDK2018/Clover/ && svn update 
cd .. && make -C BaseTools/Source/C 
cd Clover/ && ./ebuild.sh -fr 
cd 

# 更新 AptioFixPkg 源码编译 
if [ ! -d /Users/`whoami`/AptioFixPkg ] ; then
	git clone https://github.com/vit9696/AptioFixPkg 
fi 
cd /Users/`whoami`/AptioFixPkg/ && git pull 
cp /Users/`whoami`/AptioFixPkg/macbuild.tool /Users/`whoami`/AptioFixPkg/macbuild.tool.bak  

col=`awk 'END{print NR}' /Users/\`whoami\`/AptioFixPkg/macbuild.tool` 
update1=`cat -n /Users/\`whoami\`/AptioFixPkg/macbuild.tool | grep updaterepo | grep https://github.com/tianocore/edk2 | cut -b 5,6` 
((update2=$update1-1)) 
((update3=$update1+1)) 

sed -n "1,${update2}p" /Users/`whoami`/AptioFixPkg/macbuild.tool > /Users/`whoami`/AptioFixPkg/tmp.txt 
echo -e " 
if [ ! -d /Users/`whoami`/AptioFixPkg/UDK ]; then 
	mkdir UDK && cp -R /Users/`whoami`/src/UDK2018/ /Users/`whoami`/AptioFixPkg/UDK/ 
	rm -rf /Users/`whoami`/AptioFixPkg/UDK/Clover/ 
	cd /Users/`whoami`/AptioFixPkg/UDK/ && git pull 
fi 

" >> /Users/`whoami`/AptioFixPkg/tmp.txt 
sed -n "${update3},${col}p" /Users/`whoami`/AptioFixPkg/macbuild.tool >> /Users/`whoami`/AptioFixPkg/tmp.txt 
cat /Users/`whoami`/AptioFixPkg/tmp.txt > /Users/`whoami`/AptioFixPkg/macbuild.tool 

/Users/`whoami`/AptioFixPkg/macbuild.tool 
rm /Users/`whoami`/AptioFixPkg/tmp.txt 
rm /Users/`whoami`/AptioFixPkg/macbuild.tool 
mv /Users/`whoami`/AptioFixPkg/macbuild.tool.bak /Users/`whoami`/AptioFixPkg/macbuild.tool 

cp /Users/`whoami`/driverefi/apfs.efi /Users/`whoami`/src/UDK2018/Clover/CloverPackage/CloverV2/drivers-Off/drivers64UEFI/ 
cp /Users/`whoami`/driverefi/NTFS.efi /Users/`whoami`/src/UDK2018/Clover/CloverPackage/CloverV2/drivers-Off/drivers64UEFI/ 
cp /Users/`whoami`/driverefi/HFSPlus.efi /Users/`whoami`/src/UDK2018/Clover/CloverPackage/CloverV2/drivers-Off/drivers64UEFI/ 
cp /Users/`whoami`/AptioFixPkg/UDK/Build/AptioFixPkg/RELEASE_XCODE5/X64/Aptio*.efi /Users/`whoami`/src/UDK2018/Clover/CloverPackage/CloverV2/drivers-Off/drivers64UEFI/ 

cp /Users/`whoami`/driverefi/apfs-64.efi /Users/`whoami`/src/UDK2018/Clover/CloverPackage/CloverV2/drivers-Off/drivers64/ 
cp /Users/`whoami`/driverefi/NTFS-64.efi /Users/`whoami`/src/UDK2018/Clover/CloverPackage/CloverV2/drivers-Off/drivers64/ 
cp /Users/`whoami`/driverefi/HFSPlus-64.efi /Users/`whoami`/src/UDK2018/Clover/CloverPackage/CloverV2/drivers-Off/drivers64/ 

cd /Users/`whoami`/src/UDK2018/Clover/CloverPackage/ && ./makepkg && ./makeiso 
