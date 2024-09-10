# prescription

这是一个由typst编写的电子处方模板, 用于快速、方便地生成高质量处方.

## Why Typst

鉴于Word(.doc、.docx)是二进制格式, 不方便git管理; LaTex(TeX Live)安装包体积大, 语法冗余, 而且中文支持不好, 因此我们选择了typst这个轻量、语法简洁的排版工具.

## Usage

基本设置须更改`config.typ`对应的变量, 其中:

* `title`: 医院的名称
* `name`: 患者姓名(汉字间建议用空格隔开)
* `gender`: 性别, "男"或"女"
* `age`: 患者年龄
* `diagnosis`: 诊断内容
* `doctor`: 医生名字
* `amount`: 药品总金额

添加药品:

```typst
#add_medicine("<药品名>", "? 盒/瓶", "每日 ? 粒 内服/外用 ...")
```

编译pdf:

```shell
typst compile prescription.typ
```

## Environment

* Linux: View [[Typst on Repology][repology]](https://repology.org/project/typst/versions)
* macOS: `brew install typst`
* Windows: `winget install --id Typst.Typst`

## Requirement

本项目使用了`Noto Sans CJK SC`和`SimSun`两种字体, 编译时请确保安装了这两种字体. 由于typst编译时缺少字体不会报错, 这个问题很容易被忽略.
为保障格式符合预期，不清楚如何查看自己是否有这两款字体的话，可以在clone本项目后可以直接安装这两个字体

## 关于打印

A5直接打印即可, A4打印时70%缩放再根据A5的规格裁剪.

## TODO List

~~* 在项目里集成公章生成器.~~

## License

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://github.com/31core/prescription">prescription</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://github.com/31core">31core</a> is licensed under <a href="https://creativecommons.org/licenses/by-nc-sa/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY-NC-SA 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1" alt=""><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1" alt=""><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/nc.svg?ref=chooser-v1" alt=""><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/sa.svg?ref=chooser-v1" alt=""></a></p> 
