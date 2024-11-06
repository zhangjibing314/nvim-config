# nvim

---
## 配置结构
```
.
├── init.lua
├── LICENSE
├── lua
│   ├── base
│   │   ├── base.lua            --基础配置
│   │   ├── keymaps.lua         --快捷键映射
│   │   └── options.lua         --配置选项
│   ├── config
│   │   ├── lazy-config.lua     --对lazy插件管理器的配置
│   │   └── lazy.lua            --用插件管理器安装插件
│   └── plugins                 --各个插件的配置
└── README.md
```

---
## 使用
### 下载nvim
可在官网下载，因为使用 apt 下载的nvim版本太低，有些插件可能支持不好(此时我使用的版本为 `0.10.2`)

### 克隆配置仓库
```
git clone https://github.com/zhang20204/nvim-2023.git
```

### 创建配置链接
```
ln -s ./nvim-2023 ~/.config/nvim
```

### 安装插件及加载配置
1. 删除 `./lazy-lock.json` 文件
2. 打开 nvim 编辑器，进入命令行模式后执行`lazy`进入lazy面板
3. 按`I`键(大写的`i`)进行安装,等待更新完成后即可食用

---
## 基本配置和快捷键
### 参考文件:
```txt
./lua/base/base.lua
./lua/base/keymaps.lua
./lua/base/options.lua
```
