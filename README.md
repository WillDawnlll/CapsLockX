<!-- THIS FILE IS GENERATED PLEASE MODIFY DOCS/README --->
 # CapsLockX - 像**黑客**一样操作电脑！

像**黑客**一样操作电脑！CapsLockX 让你可以轻轻松松像电影里的**黑客**一样，双手不离开键盘，**高效率**地操作电脑。这里有超多一摸就懂超好上手的功能：编辑增强、虚拟桌面与窗口管理、鼠标模拟、应用内热键增强、JS 数学表达式计算、等超多功能等你来定义。

## 入门教程第一

### 安装

#### 方式 1

源码打包就是软件本体，无需编译。

1. 下载源码 zip 点击 [github仓库源码.zip](https://github.com/snomiao/CapsLockX/archive/master.zip) 然后解压后使用。
<!-- 或 [Gitee 仓库源码（墙内）.zip](https://gitee.com/snomiao/CapslockX/repository/archive/master.zip) -->
2. 双击 `CapsLockX.exe` 即可启动脚本，如需添加启动项，请在开始菜单 - 运行输入 shell:startup 然后给本程序创建快捷方式，扔进去就可以了。

#### 方式 2

如果你有 npm ，可以尝试 `npm i -g capslockx` 以及 `npx capslockx` 来自动安装本软件

### 使用方式

启动脚本后, 你可以尝试：按下 `Alt`, 按住 `Tab`, 然后按 `WASD` 切换选中窗口, 再按 `C` 关闭窗口，

> 某些功能需要使用管理员身份运行（如鼠标模拟）
> 在 CapsLockX-Settings.ahk 中
> 手动修改 global T_AskRunAsAdmin := 1 即可
> 如不需要，可以改为 0

### CapsLockX + 键位简述

按住 CapsLock 或 空格 然后再按……

- 鼠标模拟 `WASD EQ RF` 分别是鼠标的 移动 左右键 滚轮
- 编辑增强 `HJKL YUIO TG` 分别是光标的 左上下右 页面键 退格回车
- 窗口管理 `ZXCV` 分别是窗口的 切换 关闭 排列 透视
- 剩下的 `BNM P` 目前保留中

## 目录第二

## 使用手册第三

<!-- * 按 `CapsLock` 切换 CapsLockX 模式 -->

- 按住 `CapsLock` 进入 CapsLockX 模式，此时你的键盘会成为像 Vim 默认模式那样的功能键盘，（键位见下

下面列出的每个模块都可以单独禁用，请见 `CapsLockX-Settings.ahk` 文件，
对于不需要的模块，你也可以直接删除 `./Modules` 目录下对应的文件，然后按 `Ctrl + Alt + F12` 重新加载即可。

<!-- 下面这堆东西是自动从各个模块里抽取的，如需改动请到对应模块.md 里操作, 在这里修改会被覆盖 -->
<!-- 开始：抽取模块帮助 -->
<!-- 模块文件名：00-Help.ahk-->

### 帮助模块

如果你想学习如何开发 CapsLockX 的插件，请：

1. 打开这个文件中： `Modules/01-Help.ahk`， 你可以了解到 CapsLockX 插件的基本格式
2. 将它复制一份，命名为你自己的插件名称
3. 将它本来的功能改成你自己需要的功能，插件的开发就完成啦！

#### 本模块功能见下

| 作用于 | 按键                  | 功能                                |
| ------ | --------------------- | ----------------------------------- |
| 全局   | CapsLockX + /         | 临时显示热键提示                    |
| 全局   | CapsLockX（长按）     | 临时显示热键提示                    |
| 全局   | CapsLockX + Alt + /   | 🔗 打开 CapsLockX 的 README.md 页面 |
| 全局   | CapsLockX + Shift + / | 🕷 提交 bug、建议等                  |

<!-- 模块文件名：01.1-插件-模拟鼠标.ahk-->

### 模拟鼠标插件（ WASD QERF ）

#### 功能

- 本模块使用按键区：CapsLockX + QWER ASDF
- 非常舒适地使用 WASD QE RF 来模拟【完整的】鼠标功能，相信我，试过这种手感之后，你会喜欢上它的。
- 指针移动时会自动黏附各种按钮、超链接。滚轮的指数级增长的加速度滚动机制使你再也不惧怕超级长的文章和网页。
- 效果如图：
  ![鼠标模拟.gif]( ./media/鼠标模拟.gif )

#### 使用方法如下

| 作用于 | 按键                | 说明                    |
| ------ | ------------------- | ----------------------- |
| 全局   | CapsLockX + w a s d | 鼠标移动（上下左右）    |
| 全局   | CapsLockX + r f     | 垂直滚轮（上下）        |
| 全局   | CapsLockX + R F     | 水平滚轮（左右）        |
| 全局   | CapsLockX + rf      | rf 同时按相当于鼠标中键 |
| 全局   | CapsLockX + e       | 鼠标左键                |
| 全局   | CapsLockX + q       | 鼠标右键                |

<!-- 模块文件名：01.2-插件-编辑增强.ahk-->

### 编辑增强插件（ TG YUIO HJKL ）

这个世界上还有比 Vim 模式的 HJKL 移动光标更棒的东西吗？
这个必须有！
那就是带加速度的 HJKL 流畅编辑体验！想不想试试让你的光标来一次排水沟过弯的高端操作？装它！

![光标移动.gif]( ./media/光标移动.gif )

| 作用域 | Edit 模块             | 说明 （欢迎 push）  |
| ------ | --------------------- | ------------------- |
| 全局   | CapsLockX + k j h l   | 上下左右 方向键     |
| 全局   | CapsLockX + hl        | hl 一起按选择当前词 |
| 全局   | CapsLockX + y o       | Home End            |
| 全局   | CapsLockX + yo        | yo 一起按选择当前行 |
| 全局   | CapsLockX + g         | 回车                |
| 全局   | CapsLockX + t         | BackSpace           |
| 全局   | CapsLockX + Shift + t | Delete              |

<!-- 模块文件名：03.1-插件-窗口增强.ahk-->

### 窗口增强插件 (123456789-=XC)

#### 功能简述：

1. CapsLockX + M 快速排列窗口
2. 在 Alt + Tab 的时候，用 `WASD` 切换窗口，C 关掉窗口
3. `CapsLockX + 0123456789-=` 切换、增减虚拟桌面，加上 Alt 键可以转移当前窗口，高效使用虚拟桌面

#### 效果图

- Alt + Tab 管理窗口增强
  ![02-插件-窗口增强_Alt+Tab+WASD管理窗口.gif]( ./media/02-插件-窗口增强_Alt+Tab+WASD管理窗口.gif )
- 一键排列窗口（这 GIF 是旧版本录的看起来比较卡，新版本优化过 API 就不卡了）
  ![02-插件-窗口增强_一键排列窗口.gif]( ./media/02-插件-窗口增强_一键排列窗口.gif )

#### 使用方法如下

| 作用域       | 窗口增强模块                  | 说明                                         |
| ------------ | ----------------------------- | -------------------------------------------- |
| Alt+Tab 界面 | Q E                           | 左右切换多桌面                               |
| Alt+Tab 界面 | W A S D                       | 上下左右切换窗口选择                         |
| Alt+Tab 界面 | X C                           | 关闭选择的窗口（目前 X 和 C 没有区别）       |
| Win+Tab 视图 | Alt + W A S D                 | 切换窗口选择                                 |
| 全局         | CapsLockX + -                 | 删除当前桌面（会把所有窗口移到上一个桌面）   |
| 全局         | CapsLockX + 1 2 ... 9         | 切换到第 n 个桌面                            |
| 全局         | CapsLockX + =                 | 新建桌面                                     |
| 全局         | CapsLockX + Shift + 1 2 ... 9 | 把当前窗口移到第 n 个桌面(如果有的话)        |
| 全局         | CapsLockX + Shift + =         | 新建桌面，并把当前窗口移过去                 |
| 全局         | CapsLockX + Shift + C         | 快速堆叠当前桌面的窗口                       |
| 全局         | CapsLockX + Shift + Alt + C   | 快速堆叠当前桌面的窗口（不包括最小化的窗口） |
| 全局         | CapsLockX + Shift + [ ]       | 把当前窗口移到上一个/下一个桌面              |
| 全局         | CapsLockX + Z                 | 循环切到最近使用的窗口                       |
| 全局         | CapsLockX + Shift+ Z          | 循环切到最不近使用的窗口                     |
| 全局         | CapsLockX + X                 | 关掉当前标签页 Ctrl+W                        |
| 全局         | CapsLockX + Shift+ X          | 关掉当前窗口 Alt+F4                          |
| 全局         | CapsLockX + C                 | 快速排列当前桌面的窗口                       |
| 全局         | CapsLockX + Shift + C         | 快速排列当前桌面的窗口（不包括最小化的窗口） |
| 全局         | CapsLockX + V                 | 让窗口透明                                   |
| 全局         | CapsLockX + Shift+ V          | 让窗口保持透明（并置顶）                     |


<!-- | 全局         | CapsLockX + [ ]               | 切换到上一个/下一个桌面                      | -->
<!-- | Win+Tab 视图 | X                           | 关掉选择的窗口                                 |
| Win+Tab 视图 | Q E                         | 左右切换桌面概览                               |
| Win+Tab 视图 | Z                           | 合并当前桌面与上一个桌面                       |
| Win+Tab 视图 | 0                           | 新建桌面                                       |
| Win+Tab 视图 | 1 2 ... 9                   | 把窗口移到除了自己的第 X 个桌面（或新建桌面）  |
| Win+Tab 视图 | V                           | 新建桌面，并把当前窗口扔到新建桌面             |
| Win+Tab 视图 | C                           | 新建桌面，并把当前窗口扔到新建桌面，并激活窗口 |
| Win+Tab 视图 | [ ]                         | 切换到上一个/下一个桌面                        | -->
<!-- 结束：抽取模块帮助 -->

## 过去与未来第四

### 制作背景 ( 2017 年秋)

> 本人比较经常写代码…
> 起初我是右鼠……后来觉得鼠标放右边有点远……改成了左鼠
> 左鼠之后发现手还是要离开键盘……于是做了个 WASD 模拟鼠标的东西。（然后就能一直用右手托着下巴玩电脑了）
> 后来写的脚本越来越多，就把其中一些常用的放到一起加载……

### 发展路线

本项目的核心理念是：简化系统操作逻辑，提升操作效率，且尽量不与原有习惯键位冲突。

1. [x] 长按 CapsLockX 键显示对应帮助
2. [ ] 初次使用上手教程
3. [ ] 自动更新
4. [ ] 插件管理器
5. [ ] 自动配置同步功能
6. [ ] 易用的选项配置的 UI 界面
7. [ ] 执行外部代码（Python、Nodejs、Bash、……）

如果你有任何想法或建议，请在这里提出：
[Issues · snomiao/CapslockX](https://github.com/snomiao/CapsLockX/issues)

### 本项目与类似项目的功能对比 / 更新于(20200627)

| 功能\项目        | [CapsLockX](https://github.com/snomiao/CapsLockX) | [Vonng/CapsLock](https://github.com/Vonng/CapsLock) | [coralsw/CapsEz](https://github.com/coralsw/CapsEz) | [CapsLock+](https://capslox.com/capslock-plus/) |
| :--------------- | :------------------------------------------------ | :-------------------------------------------------- | :-------------------------------------------------- | :---------------------------------------------- |
| 鼠标模拟         | ✅ 流畅完整                                        | ✅ 无滚轮                                            | 🈚 无                                                | 🈚 无                                            |
| 表达式计算       | ✅ Nodejs 或 JScript                               | 🈚 无                                                | 🈚 无                                                | ✅ TabScript (Snippet + Javascript)              |
| 窗口管理         | ✅ 强                                              | ✅ 有                                                | ✅ 有                                                | ✅ 强                                            |
| 虚拟桌面管理     | ✅ 有                                              | 🈚 无                                                | 🈚 无                                                | 🈚 无                                            |
| 编辑增强         | ✅ 有（抛物模型）                                  | ✅ 有                                                | ✅ 有                                                | ✅ 有（很全）                                    |
| 绿色免安装       | ✅ 是                                              | ✅ 是                                                | ✅ 是                                                | ✅ 是                                            |
| 增强媒体键       | 不全                                              | ✅ 全                                                | 🈚 无                                                | 🈚 无                                            |
| 强化的剪贴板     | 弱                                                | 🈚 无                                                | 🈚 无                                                | ✅ 有                                            |
| 快速启动应用     | ✅ 插件                                            | ✅ 有                                                | ✅ 有                                                | ✅ 有                                            |
| 应用功能增强     | ✅ 丰富                                            | 🈚 无                                                | ✅ 有                                                | 🈚 无                                            |
| Bash 控制        | 🈚 无                                              | ✅ 有                                                | 🈚 无                                                | 🈚 无                                            |
| 快速启动语音输入 | ✅ 讯飞                                            | 🈚 无                                                | 🈚 无                                                | 🈚 无                                            |
| 快速输入时间日期 | ✅ 有                                              |                                                     | ✅ 有                                                |                                                 |
| 窗口绑定到热键   | 🈚 无                                              | 🈚 无                                                | 🈚 无                                                | ✅ 有                                            |
| 快速旋转屏幕     | ✅ 有                                              | 🈚 无                                                | 🈚 无                                                | 🈚 无                                            |
| 二次开发         | ✅ 文档友好                                        | ✅ 可                                                | ✅ 可                                                | ✅ 可                                            |
| 内存占用         | ✅ 约 2~3M                                         |                                                     |                                                     |                                                 |
| 模块化           | ✅                                                 | 🈚 无                                                | 🈚 无                                                | 🈚 无                                            |
| 系统             | Win                                               | Mac（主），Win（次）                                | Win                                                 | Win, [Mac](https://capslox.com/)                |
| 支持语言         | 中文                                              | 中文 / English                                      | 中文                                                | 中文 / English                                  |

#### 本项目地址
<!-- （以下几个仓库同步）： -->

- GitHub: https://github.com/snomiao/CapsLockX

<!-- - Gitee: https://gitee.com/snomiao/CapslockX -->
<!-- - Bitbucket: https://bitbucket.org/snomiao/capslockx/ -->

#### 相似项目地址：

- 源码：[Vonng/CapsLock: Make CapsLock Great Again!](https://github.com/Vonng/CapsLock)
  设计：[rrCapslock/design.md at master · Vonng/Capslock](https://github.com/Vonng/Capslock/blob/master/design.md)
- [coralsw/CapsEz: KeyMouse Tools](https://github.com/coralsw/CapsEz)
- [CapsLock+](https://capslox.com/CapsLock-plus/)
- [Capslox](https://capslox.com/cn/)
- CapsLock++ [matrix1001/CapsLock-plus-plus: ⌨Amazing, extendable, readable autohotkey scripts framework utilized by CapsLock.](https://github.com/matrix1001/CapsLock-plus-plus)

#### 其它效率软件推荐

- [Quicker](https://getquicker.net/) 也是一个提高电脑操作效率的软件，与本项目可以互补。<!-- （雪星的推荐码： 55396-2857） -->
- [Everything](https://www.voidtools.com/zh-cn/)

## 答疑相关第五

本项目使用 [GNU 通用公共许可证 v3.0 - GNU 工程 - 自由软件基金会](https://www.gnu.org/licenses/gpl-3.0.html)。

相关知乎问题：
- [如何将电脑桌面划分为独立的两半？ - 知乎]( https://www.zhihu.com/question/23443944/answer/1670521971 )

相关社群：

- CapsLockX 用户 QQ 群：[100949388](https://jq.qq.com/?_wv=1027&k=56lsK8ko)
- QZ/VimD/TC/AHK QQ 群： 271105729
- AHK 高级 QQ 群： 717947647
- [本项目的 issues （可作论坛使用）](https://github.com/snomiao/CapsLockX/issues)

本项目相关答疑直接进群 [@雪星](tencent://message?uin=997596439) 或私聊提问也可。

## 求助第六

如何帮助本项目生存下去？如果本项目有帮助到你：

1. 欢迎在 Github 上点星
2. 欢迎把我转发分享给你身边的朋友们。
3. 欢迎帮我翻译 readme.md 到各国语言。
4. 欢迎提交 bug、提出完善建议 [issues](https://github.com/snomiao/CapsLockX/issues)
5. 欢迎提交代码 PR，哪怕是修改错别字也是可以的～
6. 欢迎在此捐助本项目的开发，每一笔捐赠都会记录到下方的列表中：
   - 爱发电：https://afdian.net/@snomiao
   - PAYPAL: https://paypal.me/snomiao
   - 支付宝捐助账号： [snomiao@gmail.com （点击查看二维码）](./支付宝捐助.png)

你的支持会实际地，帮助到本项目的未来开发工作，开发计划见此：[发展路线](#发展路线)

### 捐赠记录

暂无

### 鸣谢列表

感谢 [秦金伟](http://rsytes.coding-pages.com/) 的引用推荐文章、和发展建议：

- [2020-02-23 当键盘模拟鼠标 - 简书](https://www.jianshu.com/p/f757f56a7de6)

### 相关话题

- [(10) What are some good career alternatives for a computer programmer with RSI? - Quora]( https://www.quora.com/Repetitive-Strain-Injury-RSI/What-are-some-good-career-alternatives-for-a-computer-programmer-with-RSI )