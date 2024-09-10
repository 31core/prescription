#let block_medicine(name, amount, method) = [
  #name #h(1fr) #text(size: 8pt)[#amount]

  #text(size: 7pt, top-edge: 1pt)[用法: #method]
]

#let medicines = state("medicines", ())


#let add_medicine(name, amount, method) = {
  context medicines.update(medicines => {
    medicines.push(block_medicine(name, amount, method))
    medicines
  })
}
//不要修改以上内容，仅修改下列 "" 中的文字

#let title = "医院名"//在这里写医院的名称
#let name = "名字"//写你的名字
#let gender = "女"//性别
#let age = "114" //年龄
#let diagnosis = "诊断" //在这里写诊断
#let department = "内分泌" //在这里写科室，激素类药写内分泌科
#let doctor = "某某某"  //编一个医生名字，不要写真的，别害人家
#let amount = "514"  //药品的总金额，自己算一下写上
/* add your medicines like this*/
//调用#add_medicine 函数如下，可以复制多个，以添加多种药品，也可以修改名称、用量
#add_medicine("戊酸雌二醇 补佳乐", "1 盒", "每日 1 粒 内服 慢性病")
