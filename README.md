# prescription

这是一个由typst编写的电子处方模板.

# Usage
基本设置须更改`config.typ`对应的变量, 其中:

* `title`: 医院的名称
* `name`: 患者姓名(汉字间建议用空格隔开)
* `gender`: 性别, "男"或"女"
* `age`: 患者年龄
* `diagnosis`: 诊断内容

添加药品:

```typst
#add_medicine("<药品名>", "? 盒/瓶", "每日 ? 粒 内服/外用 ...")
```

编译pdf:
```shell
typst compile prescription.typ
```

# License
<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://github.com/31core/prescription">prescription</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://github.com/31core">31core</a> is licensed under <a href="https://creativecommons.org/licenses/by-nc-sa/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY-NC-SA 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1" alt=""><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1" alt=""><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/nc.svg?ref=chooser-v1" alt=""><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/sa.svg?ref=chooser-v1" alt=""></a></p> 
