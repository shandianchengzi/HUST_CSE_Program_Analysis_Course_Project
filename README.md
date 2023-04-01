# 用途

使用flawfinder对目录进行静态分析，
并输出所有的CWE以及问题至output文件夹里。

# Quick Start

## 安装相关依赖
在开始前，需要安装一些依赖：

```bash
pip install flawfinder
```

## 更新子模块
现在分析的项目目录下有子模块rt-thread和unicorn，如果你需要分析其中一个，请直接使用以下指令克隆：

```bash
git submodule update --remote <submodule_name>
```

其中`<submodule_name>`是要更新的子模块的名称。例如，如果要更新名为`rt-thread`的子模块，就运行：

```bash
git submodule update --remote rt-thread
```

## 分析其他仓库

请先fork本仓库，并将修改提交保存至自己的仓库目录下。

如果你希望用本仓库的代码分析其他的仓库，只需以下简单的一个步骤：添加你所分析的仓库。

```bash
git submodule add [仓库地址]
git clone [仓库地址]
```

## 开始分析

所有常用工具都在`tools/usualtools`下。

直接运行以下指令，参数为你要分析的目录、分析结果的名字：

```bash
./tools/usualtools/run_sample.sh <your dir> <output_file_name>
```

例如，以下指令将会对rt-thread进行分析，结果保存在output/output.csv中：

```bash
./tools/usualtools/run_sample.sh rt-thread output.csv
```

如果你希望这个脚本别占用你的终端，那请使用nohup后台运行：
```bash
nohup ./tools/usualtools/run_sample.sh rt-thread output.csv &
```

当你需要查看脚本是否运行完成时，可以运行ps指令：
```bash
ps -aux | grep run_sample.sh
```

如果频繁检出非ASCII码的异常字符，并且是无法确定编码格式的，可以调用脚本清除所有的非ascii码字符（注意，别用来清.git目录）：

```bash
./tools/usualtools/del_strange0xa1.sh <your dir>
```
