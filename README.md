# Clover_Build
> A script about building clover with AptioFixPkg by UDK2018

## 下载说明

本仓库自动部署，`CLOVER`源码有更新时，此脚本会自动部署并上传`iso`和`zip`至本仓库`build`目录

下载

```bash
$ cd && git clone https://github.com/athlonreg/Clover_Build 
```

更新

```bash
$ cd ~/Clover_Build 
$ git pull 
```

## 编译说明

> 如果你想手动编译，请往下看编译流程

现在我们可以利用`UDK2018`来编译`CLOVER`。下面是步骤：

1. 安装`macOS`，推荐最好`10.13.4`。
2. 安装`Xcode`，安装`Command Line Tools`。
3. 下载`NASM`

```bash
$ cd ~ 

$ wget  https://www.nasm.us/pub/nasm/releasebuilds/2.13.03/macosx/nasm-2.13.03-macosx.zip 

$ unzip nasm-2.13.03-macosx.zip 

$ sudo chflags nohidden /opt 

$ sudo mkdir -p /opt/local/bin 

$ sudo mv -R nasm-2.13.03-macosx/ /opt/local/bin/nasm/ 

$ sudo ln -s /opt/local/bin/nasm/nasm /usr/local/bin/
```

4. 准备源码

```bash
$ mkdir src 

$ cd src 

$ git clone https://github.com/tianocore/edk2 -b UDK2018 --depth 1 UDK2018 

$ cd UDK2018 

$ svn co svn://svn.code.sf.net/p/cloverefiboot/code/ Clover 

$ make -C BaseTools/Source/C 

$ ./edksetup.sh 

$ cd Clover 

$ ./buildgettext.sh 

$ cp -R Patches_for_EDK2/* ../ 

$ ./ebuild.sh -fr 
```

5. 现在，我们已经准备好了`CLOVER`源码了，只需要进入`CloverPackage`目录执行`makeiso`和`makepkg`

```bash
$ cd CloverPackage 
$ ./makepkg && ./makeiso 
```

6. 现在我们虽然可以正常编译`CLOVER`了，但是默认编译的是不含有`AptioMemory.efi`、`AptioInputFix.efi`、`apfs.efi`、`HFSPlus.efi`和`NTFS.efi`的，要想使用这些`efi`驱动，我们还需要手动加入或者编译，本仓库的脚本就是用来实现此功能。
7. 本仓库含有六个`efi`驱动，此脚本需要在用户根目录下创建`driverefi`文件夹，并将仓库内`driverefi`下的所有文件放在此目录下。

```bash
$ cd ~ 
$ mkdir driverefi 
$ git clone https://github.com/athlonreg/Clover_Build 
$ cp ~/Clover_Build/driverefi/*.efi ~/driverefi/ 
$ cd ~/Clover_Build/bin/ 
$ ./udkbuildclover.sh 
```

8. 如果需要以后的源码更新和编译更加方便，可以利用下面的方法

```bash
$ cd ~ 
$ echo "alias udkbuild='~/Clover_Build/bin/udkbuildclover.sh'" >> ~/.bashrc 
$ . .bashrc 
```

9. 现在，我们就可以直接使用以下命令直接更新`CLOVER`和`ApitioFixPkg`源码并编译了

```bash
$ udkbuild 
```

## Credits
- `Clover Team` 
- [vit9696's AptioFixpkg](https://github.com/vit9696/AptioFixPkg) 
- zenith432 


