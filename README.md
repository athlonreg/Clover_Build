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
- 4923: fix acidantera access by slice2009 -- 2019-04-26
 
- 4922: set loosen variable in message by slice2009 -- 2019-04-23
 
- 4921: update bios and efi version. fix 1st Gen Intel HD Graphics QE/CI when using intel inject by shelocks -- 2019-04-23
 
- 4920: improve automatic audio injection by slice2009 -- 2019-04-16
 
- 4919: exclude redundant lines by slice2009 -- 2019-04-06
 
- 4918: add info for iMac Early 2019. thanks to bootmacos by shelocks -- 2019-04-03
 
- 4917: Fix another time zone problem by apianti -- 2019-04-03
 
- 4916: Fix default time zone handling by apianti -- 2019-04-03
 
- 4915: cleanup iGPU values and fix force reboot when wakes up with an HDMI connected in 10.14+ by shelocks -- 2019-03-31
 
- 4914: Upgrade GCC and MTOC versions by zenith432 -- 2019-03-30
 
- 4913: fix MatchOS for 10.14, only 10.14 (10.14.1 will be skipped) case by shelocks -- 2019-03-30
 
- 4912: Remove EdkCompatibilityPkg from update.sh since it is not used and no longer present in edk2-master by apianti -- 2019-03-30
 
- 4911: fix applertc patch for 10.14.4+. thanks to RodionS by shelocks -- 2019-03-29
 
- 4910: update nvidia identification by slice2009 -- 2019-03-27
 
- 4909: fix signed mismatch  by slice2009 -- 2019-03-27
 
- 4908: use separate names for several lan cards by slice2009 -- 2019-03-27
 
- 4907: fix misprints by slice2009 -- 2019-03-27
 
- 4905: automatic determine Nvidia card family by slice2009 -- 2019-03-26
 
- 4904: do not create _DSM for HDEF device by slice2009 -- 2019-03-26
 
- 4863: fix lapic patch for Mojave by PMheart. improve reset emuvariable nvram for bootchime by shelocks -- 2019-01-27
 
- 4862: fix kext injection for Mojave by PMheart by slice2009 -- 2019-01-25
 
- 4861: better save and restore audio parameters by slice2009 -- 2019-01-25
 
- 4860: fix audio output numeration by slice2009 -- 2019-01-24
 
- 4859: startup sound variables will be stored under AppleBootGuid for legacy compatibility by slice2009 -- 2019-01-23
 
- 4858: improve reset nvram for bootchime. add more linux entry by shelocks -- 2019-01-22
 
- 4857: check variables in audio interface by slice2009 -- 2019-01-22
 
- 4856: fix some audio bugs by slice2009 -- 2019-01-21
 
- 4854: change a metal to cesium by slice2009 -- 2019-01-20
 
- 4853: fixes for daylight and embedded sound by tluck by slice2009 -- 2019-01-20
 
- 4852: possible sound 8kHz by slice2009 -- 2019-01-20
 
- 4851: update AudioDxe driver to sync with origin by slice2009 -- 2019-01-18
 
- 4850: security update for audio drivers by slice2009 -- 2019-01-18
 
- 4849: exclude redundant procedures by slice2009 -- 2019-01-17
 
- 4848: add embedded sound by slice2009 -- 2019-01-17
 
- 4847: tune and test startupsound from GUI by slice2009 -- 2019-01-16
 
- 4846: repair kext injection in Mojave, by vit9696 by slice2009 -- 2019-01-15
 
- 4845: fix positions with bootCampStyle, by Needy by slice2009 -- 2019-01-14
 
- 4844: accept audiodxe changes from goldfish64 by slice2009 -- 2019-01-10
 
- 4843: include AudioDxe into package by slice2009 -- 2019-01-09
 
- 4842: missing definition by slice2009 -- 2019-01-09
 
- 4840: a choice between sync and async startup sound play by slice2009 -- 2019-01-08
 
- 4839: added hdacodec into svn control by slice2009 -- 2019-01-06
 
- 4836: fix library names by slice2009 -- 2019-01-05
 
- 4835: add AudioDxe driver by slice2009 -- 2019-01-05
 
- 4834: fix wavelib compilation by slice2009 -- 2019-01-05
 
- 4833: each theme can have own startup sound by slice2009 -- 2019-01-04
 
- 4832: text formatting by slice2009 -- 2019-01-02
 
- 4831: Fix scrollbar elements that use transaprency. by blackosx -- 2018-12-29
 
- 4829: Add/Update some icons to christmas and newyear themes. by blackosx -- 2018-12-28
 
- 4828: Fix r4826: -> operator has higher precedence than unary * operator by zenith432 -- 2018-12-28
 
- 4826: a possibility to group clipPathes by slice2009 -- 2018-12-27
 
- 4825: show daylight is log by slice2009 -- 2018-12-27
 
- 4824: restrict clip-path to be used only in banner by slice2009 -- 2018-12-27
 
- 4823: correct clip-path usage for images by slice2009 -- 2018-12-26
 
- 4822: Fix for ticket #528 by zenith432 -- 2018-12-25
 
- 4821: better VS2013 compatibility by slice2009 -- 2018-12-24
 
- 4820: Fix horizontal placement of icons for raster themes. by blackosx -- 2018-12-24
 
- 4815: Fix some mismatched sign comparisons and type casting by apianti -- 2018-12-21
 
- 4814: Fix build issues on Windows and some type casting errors by apianti -- 2018-12-21
 
- 4813: a text can be stroked by slice2009 -- 2018-12-19
 
- 4812: Update CloverThemeManager app to v0.77.1 with initial vector theme support by blackosx -- 2018-12-17
 
- 4811: implemented scroll bar for vector themes by slice2009 -- 2018-12-16
 
- 4810: Patches_for_EDK2/BaseTools/Source/C/Makefile for Windows by vectosigma -- 2018-12-15
 
- 4809: improve unicode support by slice2009 -- 2018-12-14
 
- 4808: updated Clovy theme by slice2009 -- 2018-12-13
 
- 4807: improve embedded theme, by Clovy by slice2009 -- 2018-12-12
 
- 4806: security check in DumpUefiCalls by slice2009 -- 2018-12-11
 
- 4805: keep legacy base tools in clover repo by slice2009 -- 2018-12-09
 
- 4804: fix warning by previous commit by slice2009 -- 2018-12-09
 
- 4801: Removed DuetPkg from update.sh by philippetev -- 2018-12-09
 
- 4800: exclude Duet dependency from project by slice2009 -- 2018-12-08
 
- 4799: assign gradients for symbols by slice2009 -- 2018-12-08
 
- 4798: take into account mirror transform by slice2009 -- 2018-12-08
 
- 4797: accepted ticket 520 by slice2009 -- 2018-12-08
 
- 4796: font-family allowed to be quoted as illustrator does by slice2009 -- 2018-12-07
 
- 4795: initial value for bootercfg will be from NVRAM by slice2009 -- 2018-12-07
 
- 4792: security update by slice2009 -- 2018-12-06
 
- 4791: Extend previous commit to rasterization by blackosx -- 2018-12-05
 
- 4790: Allow Banner_night to be repositioned by blackosx -- 2018-12-05
 
- 4789: working animation in vector theme by slice2009 -- 2018-12-04
 
- 4788: first approach to animation by slice2009 -- 2018-12-03
 
- 4787: resolve conflict two commits by slice2009 -- 2018-12-03
 
- 4786: more alingment by clovy by slice2009 -- 2018-12-02
 
- 4785: revise bootcamp style, by Needy by slice2009 -- 2018-12-02
 
- 4784: fix image size calculation by slice2009 -- 2018-12-01
 
- 4783: more alignments by clovy by slice2009 -- 2018-11-30
 
- 4782: default icons for missing by slice2009 -- 2018-11-30
 
- 4781: all icons can have night looking by slice2009 -- 2018-11-29
 
- 4780: svg symbols support by slice2009 -- 2018-11-29
 
- 4779: implemented bootcamp style in vector themes by slice2009 -- 2018-11-28
 
- 4778: update smc keys from dump of virtualsmc by shelocks -- 2018-11-27
 
- 4777: theme.svg must be low case by slice2009 -- 2018-11-27
 
- 4776: optimize clovy theme by slice2009 -- 2018-11-27
 
- 4775: add igpu device id for whisky lake. correct chassis asset tag for MBP5,1 by shelocks -- 2018-11-25
 
- 4774: daylight in clovy theme by slice2009 -- 2018-11-24
 
- 4772: enlarge clovy theme to 1366x768 by slice2009 -- 2018-11-23
 
- 4771: fix a bug with menu checkbits by slice2009 -- 2018-11-22
 
- 4770: make BadgeScale for svg theme by slice2009 -- 2018-11-21
 
- 4769: centered checkbox and background by slice2009 -- 2018-11-20
 
- 4768: centered titles by slice2009 -- 2018-11-19
 
- 4767: update latest bios version with EFI version by shelocks -- 2018-11-18
 
- 4766: Update BGM theme with reduced glow Selection_big by blackosx -- 2018-11-18
 
- 4765: cleanup and recheck smbios model codes from server by shelocks -- 2018-11-18
 
- 4763: Update BGM theme to v1.9 by blackosx -- 2018-11-18
 
- 4762: Sync BGM theme with theme repo by blackosx -- 2018-11-15
 
- 4760: Update CloverThemeManager.app by blackosx -- 2018-11-15
 
- 4758: dynamically change text height by slice2009 -- 2018-11-14
 
- 4757: fix warning of 4756' by slice2009 -- 2018-11-13
 
- 4754: add help menu in chinese by slice2009 -- 2018-11-13
 
- 4753: add spoofing KabyLake iGPU as Skylake iGPU prior to 10.12.6 by shelocks -- 2018-11-12
 
- 4752: multilevel dithering, set is SVG by slice2009 -- 2018-11-12
 
- 4751: fix UHD Graphics 630 when using high sierra. ticket #517 by shelocks -- 2018-11-11
 
- 4750: increase geometry precision, by clovy by slice2009 -- 2018-11-10
 
- 4749: using vector font drawing by slice2009 -- 2018-11-10
 
- 4748: a possibility to inject commom FB for AMDRadeon, green compatible by slice2009 -- 2018-11-10
 
- 4747: support for embedded PNG by slice2009 -- 2018-11-10
 
- 4746: add MacBookAir8,1 info by shelocks -- 2018-11-09
 
- 4745: update clovy theme by slice2009 -- 2018-11-09
 
- 4744: add Macmini8,1 info. thanks to Rodion Shingarev by shelocks -- 2018-11-08
 
- 4743: correct os_icon names, by blackosx by slice2009 -- 2018-11-08
 
- 4741: correct transparency on embedded themes by clovy by slice2009 -- 2018-11-07
 
- 4740: using several fonts, template by slice2009 -- 2018-11-06
 
- 4739: correcting text by slice2009 -- 2018-11-06
 
- 4738: fix layout and main entries scaling by slice2009 -- 2018-11-06
 
- 4737: fix unicode parsing by slice2009 -- 2018-11-05
 
- 4736: fix background scaling by slice2009 -- 2018-11-05
 
- 4735: fix the issue with ascii codepage by slice2009 -- 2018-11-05
 
- 4734: consider LEVW in detail according to cpu generation by shelocks -- 2018-11-04
 
- 4733: correct clovy theme for bounding rect visibility by slice2009 -- 2018-11-04
 
- 4731: more cases for scalable layout by slice2009 -- 2018-11-04
 
- 4730: locate banner position by slice2009 -- 2018-11-04
 
- 4729: vector theme became usable by slice2009 -- 2018-11-03
 
- 4728: fix style classes by slice2009 -- 2018-11-02
 
- 4727: correct opacity by clovy by slice2009 -- 2018-11-01
 
- 4726: fix brightness level problem of actual monitor when intelbacklight for sandy/ivy by shelocks -- 2018-10-28
 
- 4725: vector theme rendering by slice2009 -- 2018-10-28
 
- 4724: correct link distance is parseUse by slice2009 -- 2018-10-27
 
- 4723: gradients repaired by slice2009 -- 2018-10-27
 
- 4722: few optimizations by slice2009 -- 2018-10-25
 
- 4721: update EFI Version for Mojave. by shelocks -- 2018-10-24
 
- 4720: dont pretransform pathes by slice2009 -- 2018-10-24
 
- 4719: add prelang kbd option if want to keep language when updating macOS with native NVRAM. by shelocks -- 2018-10-23
 
- 4717: prevent clover boot options from being deleted when NVRAM is reset by shelocks -- 2018-10-20
 
- 4716: new way for reset native NVRAM in GUI by Sherlocks. thanks to vit9696. by shelocks -- 2018-10-20
 
- 4715: use font style for Menu as global font style by slice2009 -- 2018-10-20
 
- 4714: dont relate to parent group by slice2009 -- 2018-10-19
 
- 4713: a new formula of intelbacklight for coffeelake by rehabman by shelocks -- 2018-10-18
 
- 4712: correct MP5,1 bios version by shelocks -- 2018-10-18
 
- 4710: add more image to parse by slice2009 -- 2018-10-18
 
- 4709: take into account more theme icons by slice2009 -- 2018-10-17
 
- 4707: improve IntelBacklight. by shelocks -- 2018-10-16
 
- 4706: global mistake with name Scale by slice2009 -- 2018-10-14
 
- 4705: if MaxBacklight then Backlight by slice2009 -- 2018-10-13
 
- 4704: use shell definitions from clover folder by slice2009 -- 2018-10-13
 
- 4703: inject EDID by Device Properties, be rehabman by slice2009 -- 2018-10-11
 
- 4702: consider _UID for old intel graphics by shelocks -- 2018-10-10
 
- 4701: update latest bios version by shelocks -- 2018-10-10
 
- 4700: fix compilation for acidantera by slice2009 -- 2018-10-10
 
- 4699: transform gradients in rasterizing by slice2009 -- 2018-10-09
 
- 4698: fix AddPNLF for some laptop that can't control backlight by shelocks -- 2018-10-08
 
- 4697: improve it and deal with treatment if system doesn't have backlight values by shelocks -- 2018-10-07
 
- 4695: correct FileVault2 title/description by shelocks -- 2018-10-03
 
- 4694: handle InjectKexts="Detect" when VirtualSMC.kext is used by rehabman by shelocks -- 2018-10-02
 
- 4693: Fixed FileVault 2 translations by vectosigma -- 2018-10-02
 
- 4692: VirtualSMC support: checkout and compilation (XCODE5 only ATM) by vector sigma. Package implementation by Sherlocks by vectosigma -- 2018-10-02
 
- 4691: fix for AcpiPatcher by rehabman by shelocks -- 2018-10-01
 
- 4690: Restored SMCHelper as mandatory driver by vectosigma -- 2018-10-01
 
- 4689: Fixed driver name in AppleUiSupport/postinstall by vectosigma -- 2018-10-01
 
- 4687: FileVault2 drivers are now optionals and stored in drivers-off/drivers6xx/FileVault2 by vectosigma -- 2018-10-01
 
- 4686: revert to a unix version of AppleUiSupport postinstall script by Sherlocks by vectosigma -- 2018-09-30
 
- 4685: fix description in package from r4674 by shelocks -- 2018-09-30
 
- 4683: fix a installation fail issue if AppleUiSupport exists from r4677 by shelocks -- 2018-09-30
 
- 4682: revert some parts to original for AcpiPatcher from r4675 by shelocks -- 2018-09-29
 
- 4681: Always use Clover UefiShellLib by zenith432 -- 2018-09-29
 
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
 
