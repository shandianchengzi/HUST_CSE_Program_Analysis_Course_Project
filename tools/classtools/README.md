# 用途

本目录下的tools是用于程序安全分析课程的。

主要过程：使用build.sh生成分析结果到output文件夹下。

分析结果：gitstats和flawfinder工具，对11个版本的unicorn库的静态分析结果。

# About
2022年秋季华中科技大学程序安全分析课程项目的分析结果。该项目使用FlawFinder对开源项目unicorn的v1.0.3到v2.0.1.post1这12个release版本进行静态分析。FlawFinder是一款C/C++的静态分析工具，unicorn是纯c语言编写的仿真工具。

# Quick Start

## 安装相关依赖
在开始前，需要安装一些依赖：

```bash
sudo apt install -y git gitstats
pip install flawfinder
```

## 开始分析

如果只需要得到我的分析结果，那么只需要运行以下指令即可：

```bash
./build.sh
```

分析结果均在`html`文件夹下。

为了减轻分析压力，我还顺手写了一些代码，在`tools/classtools`文件夹下。

其中`matlab`文件夹下的代码用于作图。

`find_str.py`用于查找分析结果中有多少个CWE并输出，运行方式：`python tools/find_str.py`。

## 分析其他仓库

如果你希望用本仓库的代码分析其他的仓库，只需以下简单的几个步骤：

### Step 1 添加你所分析的仓库

首先运行：

```bash
git submodule add [仓库地址]
git clone [仓库地址]
```

然后将本仓库的所有`unicorn`都改为你自己的仓库。

### Step 2 添加你需要分析的版本信息

修改`build.sh`，添加分支号和版本名。

### Step 3 开始分析

也是运行这行指令就行：

```bash
./build.sh
```