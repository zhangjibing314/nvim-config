# nvim

## 下载nvim
可在官网下载，因为使用 apt 下载的nvim版本太低，有些插件可能支持不好(此时无用的版本为 0.10.0)

## 克隆配置仓库
git clone https://github.com/zhang20204/nvim-2023.git

## 创建链接
ln -s ./nvim-2023 ~/.config/nvim

## 安装插件及加载配置
1. 删除 ./plugin/packer_compiled.lua 文件
2. 打开 nvim 编辑器，进入命令行模式后执行 :PackerInstall
等待安装、更新完成后即可使用。

## 基本配置和快捷键
参考文件:
./lua/base/keymaps.lua
./lua/base/options.lua
