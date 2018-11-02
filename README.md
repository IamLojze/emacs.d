# Emacs 配置

## 文件结构
   - init.el: 配置文件入口
   - lisp: 配置文件模块
     - evil-mode.el:            evil 插件配置
     - init-cpp-mode.el:        针对C++的优化
     - init-org.el：            针对 Org-mode 的优化
     - init-ui.el：             视觉配置
     - init-better-defaults.el：增强内置功能
     - init-keybindings.el：    按键绑定
     - init-packages.el：       插件管理

## 配置功能
### 特殊按键配置
    * 在 MacOS 下 meta 按键为 option;

### 针对C++/C
    > 按键说明: PAC (空格) Ctrl（Conntrol）
    * PAC PAC：.cpp/.h 间快速切换，BUG: 当光标在include行时会条到该文件;
    * PAC-f-r：查看历史打开文件记录;
    * PAC-f-f: 打开新的文件;
    * PAC-b:   查看缓存中打开的文件并切换;
    * PAC-es:  打开 eshell;
    * PAC-w:   .cpp 查看代码框架(函数间切换);
    * Ctrl-]:  查看变量定义处;
    * Ctrl-t:  查看变量后返回;

### 窗口管理
    * PAC-f-d: 其他窗口打开一个文件;
    * PAC-k-k: 另一窗口向上滚动;
    * PAC-j-j: 另一个窗口向下滚动;
    * PAC-p-w: 查看当前工作路径;
    * PAC-N(1~9): 光标焦点窗口切换;

### 针对 org-mode 快捷键
    * PAC-l-n 新建一个缓存用于书写博客(很少用);
    * PAC-l-p  将文章发布到博客;
    * PAC-l-s 将文章保持到博客草稿中;

