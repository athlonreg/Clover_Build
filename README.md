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
- 4680: Fix problem compiling shell by zenith432 -- 2018-09-29
 
- 4679: sync edk2 svn r27956 by zenith432 -- 2018-09-27
 
- 4678: return buildpkg.sh of r4676 by shelocks -- 2018-09-26
 
- 4677: avoid conflicts between AppleUiSupport driver and old FV2 drivers when installing by shelocks -- 2018-09-26
 
- 4676: exclude AppleKeyFeeder from default by shelocks -- 2018-09-26
 
- 4674: basic implementation of symbol parsing by slice2009 -- 2018-09-20
 
- 4673: some security checks by slice2009 -- 2018-09-17
 
- 4672: add name for new card by slice2009 -- 2018-09-15
 
- 4671: accept text color by slice2009 -- 2018-09-14
 
- 4670: safe copy strings by slice2009 -- 2018-09-13
 
- 4669: correct using referenced images by slice2009 -- 2018-09-12
 
- 4668: update packages info by slice2009 -- 2018-09-11
 
- 4667: move AppleEvent into AppleKeyAggregator driver, by vit9696 by slice2009 -- 2018-09-08
 
- 4664: avoid zero pointer referencing by slice2009 -- 2018-08-30
 
- 4663: create rastr font based on svg font by slice2009 -- 2018-08-29
 
- 4662: initial svg font support by slice2009 -- 2018-08-27
 
- 4660: add drivers description in package, by Clovy by slice2009 -- 2018-08-27
 
- 4659: cleanup and consider new format of Biosversion. add deviceid for Lakefield/JasperLake by shelocks -- 2018-08-24
 
- 4658: include AppleSupportPkg into clover package by slice2009 -- 2018-08-24
 
- 4657: begin theme.svg parsing by slice2009 -- 2018-08-22
 
- 4655: embedded theme polish be Clovy by slice2009 -- 2018-08-21
 
- 4654: continue parsing vector theme by slice2009 -- 2018-08-21
 
- 4652: fix a font color issue when change theme in GUI by shelocks -- 2018-08-19
 
- 4651: prevent EmbeddedThemeType affects other themes by shelocks -- 2018-08-19
 
- 4650: correct link transformations by slice2009 -- 2018-08-18
 
- 4649: fix mistake in atan2 leading to sharp artefaacts by slice2009 -- 2018-08-17
 
- 4648: correct order of matrix transformation by slice2009 -- 2018-08-17
 
- 4647: begin theme parsing by slice2009 -- 2018-08-16
 
- 4646: some polishing of embedded themes, by Clovy by slice2009 -- 2018-08-14
 
- 4645: changed apfssupport driver name by savvas by slice2009 -- 2018-08-13
 
- 4643: allow support for use-def-rect in SVG by slice2009 -- 2018-08-10
 
- 4642: commented out unused variable that cause error in the log by vectosigma -- 2018-08-09
 
- 4641: Enabling external scripts that allow the package to read recordered choices selected. Fixed a bad statement in the stage 0 script by vectosigma -- 2018-08-09
 
- 4639: new embedded theme by Clovy by slice2009 -- 2018-08-09
 
- 4637: add more linux distros entry, by Badruzeus by shelocks -- 2018-08-06
 
- 4636: sorting drivers in the package also on apfs volumes by vectosigma -- 2018-08-04
 
- 4635: ATOM CPU not supported FLEX_RATIO, ticket 488 by slice2009 -- 2018-08-04
 
- 4634: workaround for ibtool in Xcode10 Beta that prevent compileling xibs in some system by vectosigma -- 2018-08-03
 
- 4633: remove old key for KernelIvyXCPM, AsusAICPUPM by shelocks -- 2018-08-03
 
- 4632: cleanup the korean language in installer by shelocks -- 2018-08-03
 
- 4631: correct some misprints in installer by slice2009 -- 2018-08-02
 
- 4630: new look for Clover installer, graphics and descriptions, by Clovy by slice2009 -- 2018-08-02
 
- 4629: some step in SVG parsing over by slice2009 -- 2018-08-02
 
- 4628: update MacBookPro15,2 info by shelocks -- 2018-08-01
 
- 4627: add entry for Antergos by shelocks -- 2018-07-29
 
- 4626: Update build_gcc8.sh to gcc 8.2, binutils 2.31.1 by zenith432 -- 2018-07-29
 
- 4625: increase atan precision by slice2009 -- 2018-07-27
 
- 4624: consider Disabled option for AddProperties by shelocks -- 2018-07-26
 
- 4623: correct previous commit by slice2009 -- 2018-07-25
 
- 4622: improve atan2, initial implement text support by slice2009 -- 2018-07-25
 
- 4620: initial support for conic gradients by slice2009 -- 2018-07-24
 
- 4619: allow gradients outside of defs by slice2009 -- 2018-07-24
 
- 4618: added AptioFix3 into package by slice2009 -- 2018-07-21
 
- 4617: some cleanup and reformatting by slice2009 -- 2018-07-21
 
- 4616: autolayout disabled for Clover prefpane by vectosigma -- 2018-07-20
 
- 4615: ensure make clean delete apllications build folders by vectosigma -- 2018-07-20
 
- 4614: separate own procedures from nanosvg by slice2009 -- 2018-07-20
 
- 4612: Clover.PrefPane and CloverUpdater updated with moder objective-c code. xibs requires Xcode 5.1+ by vectosigma -- 2018-07-20
 
- 4610: implement links to shapes and gradients by slice2009 -- 2018-07-20
 
- 4609: correct wrong part from r4608 by shelocks -- 2018-07-19
 
- 4608: cleanup all framebuffer info. thanks to vit9696 by shelocks -- 2018-07-19
 
- 4607: correct font drawing: inner holes by slice2009 -- 2018-07-19
 
- 4606: add coffeelake framebuffer info by shelocks -- 2018-07-18
 
- 4605: IPF support was dropped from EDK2 in r27483 by zenith432 -- 2018-07-17
 
- 4604: correct memory allocation by slice2009 -- 2018-07-17
 
- 4603: Update to binutils 2.31; sync UDK2018 branch by zenith432 -- 2018-07-17
 
- 4602: padding structures to eliminate allocation bugs by slice2009 -- 2018-07-16
 
- 4601: update platformdata and add MacBookPro15,x info by shelocks -- 2018-07-15
 
- 4600: some debugging by slice2009 -- 2018-07-14
 
- 4596: speedup rasterizer by MalcolmMcLean by slice2009 -- 2018-07-10
 
- 4595: fix mistakes in previous commit by slice2009 -- 2018-07-07
 
- 4593: CSS class of style supported by slice2009 -- 2018-07-07
 
- 4592: draft font support by slice2009 -- 2018-07-06
 
- 4591: text formatting by slice2009 -- 2018-07-03

- 4590: patch for ticket 485, by nms42 by slice2009 -- 2018-07-03

- 4588: gradients repaired by slice2009 -- 2018-07-03
 
- 4587: fix that causes a hang on boot in 10.14 beta when using Kaby Lake-R UHD Graphics by shelocks -- 2018-07-03
 
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
 
