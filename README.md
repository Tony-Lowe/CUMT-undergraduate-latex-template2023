# 说明
本项目为非官方矿大本科毕业论文latex版本。改编于[2022年的类似项目](https://github.com/Lighter207/CUMT-undergraduate-latex-template2022)。感谢矿大各位学长学姐的贡献，让这个项目逐步完善了起来。有问题请在issues中提出。

2023版本比起2022版本，使其可以在Overleaf上直接部署。

这个branch是为了实现按引用顺序对参考文献进行编号。目前在我的项目上虽然结果上是ok的，但仍会有报错。仍需后续改进，如需撰写论文请使用main分支

# 效果
见示例PDF——thesis.pdf

# 使用

## Overleaf（推荐）

前往[Overleaf](https://www.overleaf.com/)，单击左上角的New Project，选择Upload Project。

![project](https://github.com/Tony-Lowe/CUMT-undergraduate-latex-template2023/blob/master/Introduction/screenshot1.png)

将本项目的zip压缩包上传后。单击新界面的左上角Menu，在菜单中的compiler选择XeLatex，之后单击页面中间绿色的Recompile即可。

![compiler](https://github.com/Tony-Lowe/CUMT-undergraduate-latex-template2023/blob/master/Introduction/screenshot2.png)![compile](https://github.com/Tony-Lowe/CUMT-undergraduate-latex-template2023/blob/master/Introduction/screenshot3.png)

在对应位置修改完直接Recompile即可生成毕业论文的pdf。浏览器建议使用基于Chromium的浏览器（如Microsoft Edge、Chrome等）
## Vscode
**请注意，本项目基于windows10系统，使用vscode编辑器，TeX Live 版本为2021版。**
1. Vscode 配置TeX环境
Vscode中的拓展[LaTex Workshop官方文档](https://github.com/James-Yu/LaTeX-Workshop/wiki/Install#installation)中有详细的配置过程。
其中Tex Live具体安装步骤和注意事项请参阅[tuna文档](https://mirrors.tuna.tsinghua.edu.cn/help/CTAN/)，建议使用清华，阿里云或南大的镜像源进行下载。
**注意Tex Live在安装时，无论是安装包所在路径还是选择安装的路径都不要包含中文，可能导致安装失败！**
2. 配置拓展LaTex Workshop
由于中文适配原因，需使用xelatex，不能用pdflatex。即需要更改该插件的编译recipe和option。在设置中找到该插件的 `settings.json `文件。做出以下2处修改:
```
"latex-workshop.latex.recipes": [
    // 添加下面的recipe到此处，不是覆盖
        {
            "name": "xelatex ➞ bibtex ➞ xelatex*2",
            "tools": [
                "xelatex","bibtex","xelatex","xelatex"
            ]
        },
    ]

"latex-workshop.latex.tools": [
      {
            "name": "xelatex",
            "command": "xelatex",
            "args": [
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "%DOC%"
            ]
     },
]
```
3. 解决可能出现的字体问题
由于封面使用了华文行楷字体，在用户系统中没有这个字体时，需要单独安装该字体，否则生成的文件中某些字体无法正确显示。同时，有些系统中的字体的ttf文件名不是默认的文件名，也需要确认真实文件名后对配置文件进行修改。windows系统下需要找到`Tex Live Path\texmf-dist\tex\latex\ctex\fontset\ctex-fontset-windows.def`文件并修改其中对应的ttf文件名。
例如：我的系统下隶书字体的文件名为`chinese.simli.ttf`，就需要做出以下的修改：
```
    \setCJKfamilyfont { zhli    } { chinese.simli.ttf            } 
```
同理，`thesis.cls`中要适配新安装的华文行楷的文件路径就应该修改以下项目`\setCJKfamilyfont{hwxk}{chinese.stxingka.ttf}`。

4. 使用Vscode插件编译文档
在安装好LaTex Workshop插件后左栏应该会显示该插件的图标，在修改好配置文件后，可以看到出现了我们此前定义的`xelatex -> bibtex -> xelatex *2 `的选项。点击就可以编译。其他具体使用设定细节请查看此插件官方文档。

**注意：编译时不要用别的pdf阅览器浏览文件，会导致无法同时读写，无法将变化写入文件而导致编译出错。**

# LaTex 入门语法
1. 请查看[overleaf30分钟入门文档](https://www.overleaf.com/learn/latex/Learn_LaTeX_in_30_minutes)
2. 针对计算机专业伪代码编写，在这里我决定使用较新的algpseudocodex包。具体使用方法可以查看该包的[CTAN页面](https://ctan.org/pkg/algpseudocodex)

# 文献管理工具（使用Zotero)
[zotero中文文献引用抓取插件](https://github.com/l0o0/translators_CN)

# 本项目还存在的问题
1. 英文摘要标题的Arial字体无法加粗，所以使用了New Times Roman字体加粗，看起来也算是差不多吧，不细看的话。
2. 参考文献格式，原本的要求就有点乱（说实话还不如直接用国标），这个项目中的bst文档也不是我写的，总之就是凑合着用。

