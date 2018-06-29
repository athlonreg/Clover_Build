# Clover_Build
本仓库自动部署，`CLOVER`源码有更新时，此脚本会自动部署并上传`CLOVERX64.efi`、`iso`和`zip`至本仓库`build`目录

# Notes
`GitHub`部署速度可能跟不上，当发现源码有更新但本仓库没有及时跟进时，请前往`Gitee`找相应仓库，[传送门](https://gitee.com/athlonreg/Build_Clover)

## Credits
- [Clover Team's clover source](https://sourceforge.net/projects/cloverefiboot/files/)
- [vit9696's AptioFixpkg](https://github.com/vit9696/AptioFixPkg)
- [acidanthera's ApfsSupportPkg](https://github.com/acidanthera/ApfsSupportPkg)
- [Micky1979's build_clover shell](https://github.com/Micky1979/Build_Clover)
- [tianocore's edk2](https://github.com/tianocore/edk2)

## Changelog
- 4586: correct group attribute to show Tiger by slice2009 -- 2018-06-29
 
- 4584: sync edk2 svn r27429 by zenith432 -- 2018-06-28
 
- 4583: correct sign print by slice2009 -- 2018-06-28
 
- 4581: more nanosvg fixes by slice2009 -- 2018-06-27
 
- 4580: fix several bugs in nanosvg by slice2009 -- 2018-06-27
 
- 4579: specific qsort will be faster then common by slice2009 -- 2018-06-25
 
- 4578: multiple qsort by zenith432 -- 2018-06-25
 
- 4577: fixed external drivers copy, allow duplicate optional drivers by vectosigma -- 2018-06-23
 
- 4576: Set LANInjection default to TRUE, as it used to be before r4497, to prevent changes in system identification for iMessage by asava -- 2018-06-23
 
- 4575: rudimentary support for 'image' element. aspect ratio not fixed to 1 when rendering, by aksdfauytv by slice2009 -- 2018-06-23
 
- 4574: basic text parsing by jamislike by slice2009 -- 2018-06-23
 
- 4571: Minimize dependencies in clover-genconfig; revert part of 4569 by zenith432 -- 2018-06-22

- 4569: Remove include statements from .h files in clover-genconfig by zenith432 -- 2018-06-22

- 4566: svg: debugging by slice2009 -- 2018-06-22

- 4565: svg: debugging by slice2009 -- 2018-06-22
 
- 4563: Fixes commit 4562 by philippetev -- 2018-06-21
 
- 4562: accept building scripts by vector sigma by slice2009 -- 2018-06-21
 
- 4561: svg: add functions implementation by slice2009 -- 2018-06-21
 
- 4560: draft implementation of SVG support by slice2009 -- 2018-06-21

- 4559: Review XCODE settings in tools_def.txt and Clover.dsc by zenith432 -- 2018-06-20
 
- 4558: if external drivers loaded then dont use custom by slice2009 -- 2018-06-17
 
- 4557: Set SDKROOT in buildmtoc.sh by zenith432 -- 2018-06-17
 
- 4556: add Shell64U.efi as build product to ignore list by zenith432 -- 2018-06-17
 
- 4555: copy shell application during building by slice2009 -- 2018-06-17
 
- 4554: exclude binary shell distribution by slice2009 -- 2018-06-17
 
- 4551: check different locations for mtoc.NEW by slice2009 -- 2018-06-17
 
- 4550: download AptioFix and ApfsSupport from GitHub during build by slice2009 -- 2018-06-17
 
- 4549: successful Shell compilation by Clover script by slice2009 -- 2018-06-17
 
- 4548: Update URLs by zenith432 -- 2018-06-16
 
- 4547: Update buildnasm.sh by zenith432 -- 2018-06-16
 
- 4546: eliminate warnings by new clang by slice2009 -- 2018-06-16
 
- 4544: mojave compatibility for the package installer (64 bit only with Xcode 10 +) by vectosigma -- 2018-06-16
 
- 4543: hidden visilibity reduces code size with clang by zenith432

- 4542: exclude mtoc binary from clover sources  by slice2009 -- 2018-06-15
 
- 4539: Update CloverThemeManager to v0.76.7 by blackosx -- 2018-06-13
 
- 4538: dont check xcode version, assume it is greater then 4 by slice2009 -- 2018-06-13
 
- 4537: update using subversion client by slice2009 -- 2018-06-13
 
- 4536: cleanup and check kernel/kext patches for maintenance by shelocks -- 2018-06-12
 
- 4535: Make Acpi compile again by zenith432 -- 2018-06-12
 
- 4533: fix NASM_PATH for XCODE8 toolset by slice2009 -- 2018-06-12
 
- 4532: sync edk2 svn r27295; update build_rule.txt by zenith432 -- 2018-06-11
 
- 4531: fix theme and dsdt submenu handling by slice2009 -- 2018-06-11
 
- 4530: correct folder moving (stupid xcode) by slice2009 -- 2018-06-11
 
- 4528: update package by vector sigma by slice2009 -- 2018-06-11
 
- 4527: reverted back UDK2018 patches by slice2009 -- 2018-06-11
 
- 4526: special way for hibernation on INSYDE UEFI BIOS by slice2009 -- 2018-06-11
 
- 4525: fix package _title and _description, by vector sigma by slice2009 -- 2018-06-10
 
- 4524: working Base.h for UDK2018 by slice2009 -- 2018-06-10

- 4523: an attempt to cure hibernation in a case of two HDD by slice2009 -- 2018-06-09
 
- 4522: fix hibernation issue when two drives in system by slice2009 -- 2018-06-08
 
- 4521: corrected switch menu navigation by slice2009 -- 2018-06-07
 
- 4519: additional patches for mojave by PMheart by slice2009 -- 2018-06-06
 
- 4513: choices for mandatory drivers by slice2009 -- 2018-06-03
 
- 4512: fix previous commit by slice2009 -- 2018-06-01
 
- 4510: fix PS2Keyboard by Jief Machak by slice2009 -- 2018-05-30
 
- 4509: exclude pointers to milk by slice2009 -- 2018-05-30
 
- 4508: exclude null chars from generated config.plist by slice2009 -- 2018-05-29
 
- 4507: correct mistakes by slice2009 -- 2018-05-29

- 4506: correct makeiso for new drivers location by slice2009 -- 2018-05-28
 
