#!/bin/bash

# Variable 
org=$(svn log -l 1 https://svn.code.sf.net/p/cloverefiboot/code) 
pro_ver=$(echo "\n$org" | sed -n '2p' | awk '{print $1}' | sed 's/r//g') 
author=$(echo "\n$org" | grep -v "\-\-\-\-" | sed -n "1p" | awk '{print $3}' | sed 's/r//g') 
updatetime=$(echo "\n$org" | sed -n '2p' | awk '{print $5}') 
curr_ver=$(ls ~/Documents/Tower/Clover_Build/build/ | sort | sed -n '$p' | perl -nle 'print $& if m{_r\K.*}') 
log=$(echo "\n$org" | sed -n '4p') 
log="$pro_ver: $log by $author" 

# git_tag="r${pro_ver}"
cloverisosize=1
cloverpkgsize=1
# flag=0

# Build 
cd ~/Documents/Tower/Clover_Build/ 
if [[ ${pro_ver} > ${curr_ver} ]] ; then 
	
	~/Documents/Tower/Clover_Build/bin/Build_Clover.command 
	
	# Judge local CLOVER size to avoid error 
	cloverpkgsize=$(ls -l ~/src/edk2_micky/Clover/CloverPackage/sym/*.zip | awk '{print $5}') 
	cloverisosize=$(ls -l ~/src/edk2_micky/Clover/CloverPackage/sym/CloverISO-${pro_ver}/*.iso | awk '{print $5}') 
	while [[ $cloverpkgsize < 10000000 || $cloverisosize < 10000000 ]] 
	do
		exit 1
#		~/Documents/Tower/Build_Clover/bin/Build_Clover.command 
#		cloverisosize=$(ls -l ~/src/edk2_micky/Clover/CloverPackage/sym/*.zip | awk '{print $5}') 
#		cloverpkgsize=$(ls -l ~/src/edk2_micky/Clover/CloverPackage/sym/CloverISO-${pro_ver}/*.iso | awk '{print $5}')
	done
	
	# Remove old CLOVER in workspace 
#	rm -rf ~/Documents/Tower/Build_Clover/build/* 
#	rm -rf ~/Documents/Tower/Clover_Build/build/* 
#	rm -rf ~/Documents/Tower/Build_Clover_GitLab/build/* 
	
# Copy CLOVER to remote repo
# -------------------------------------------------------------------------------------------------------------------->
	# Copy CLOVER to GitHub workspace 
	mkdir -p ~/Documents/Tower/Clover_Build/build/Clover_v2.5k_r${pro_ver}
	cp ~/src/edk2_micky/Clover/CloverPackage/sym/*.zip ~/Documents/Tower/Clover_Build/build/Clover_v2.5k_r${pro_ver}/ 
	cp ~/src/edk2_micky/Clover/CloverPackage/sym/CloverISO-${pro_ver}/*.iso ~/Documents/Tower/Clover_Build/build/Clover_v2.5k_r${pro_ver}/ 
	cp ~/src/edk2_micky/Clover/CloverPackage/sym/CloverCD/EFI/CLOVER/CLOVERX64.efi ~/Documents/Tower/Clover_Build/build/Clover_v2.5k_r${pro_ver}/
# <--------------------------------------------------------------------------------------------------------------------

# Push commit to remote repo
# -------------------------------------------------------------------------------------------------------------------->
	# Push to GitHub
	cd ~/Documents/Tower/Clover_Build/
	gsed -i -e '11a\ ' README.md
	gsed -i -e "11a\- $log -- $updatetime" README.md
	git add .
	git commit -m "$log"
	# Copy EFI drivers to Gitee workspace 
#	rm -rf ~/Documents/Tower/Clover_Build/drivers64UEFI/*.efi 
	cp ~/src/edk2_micky/Clover/CloverPackage/sym/CloverCD/EFI/CLOVER/drivers64UEFI/*.efi ~/Documents/Tower/Clover_Build/drivers64UEFI/ 
	cp ~/src/edk2_micky/Clover/CloverPackage/sym/CloverCD/EFI/CLOVER/drivers64/*.efi ~/Documents/Tower/Clover_Build/drivers64UEFI/ 
	cp ~/src/edk2_micky/Clover/CloverPackage/sym/CloverCD/EFI/CLOVER/drivers-Off/drivers64/*.efi ~/Documents/Tower/Clover_Build/drivers64UEFI/ 
	cp ~/src/edk2_micky/Clover/CloverPackage/sym/CloverCD/EFI/CLOVER/drivers-Off/drivers64UEFI/*.efi ~/Documents/Tower/Clover_Build/drivers64UEFI/ 
	for i in $(ls -l ~/Documents/Tower/Clover_Build/drivers64UEFI | grep -v total | awk '{print $9}') 
	do 
		git add drivers64UEFI/${i} 
		git commit -m "Update ${i} based on Clover_v2.5k_r${pro_ver}"
	done
#	git tag -a $git_tag -m "$log"
#	git push origin $git_tag
	git push origin master
# <--------------------------------------------------------------------------------------------------------------------

else 
	echo "The local clover version $curr_ver has been already up to date ......" 
fi 
