#let title = ""
#let name = "Put your name here"
#let gender = "女"
#let age = 114
#let diagnosis = ""

#let block_medicine(name, amount, method) = [
  #name #h(1fr) #text(size: 12pt)[#amount]

  #text(size: 10pt, top-edge: 1pt)[用法: #method]
]

#let medicines = state("medicines", ())
#let add_medicine(name, amount, method) = {
  context medicines.update(medicines => {
    medicines.push(block_medicine(name, amount, method))
    medicines
  })
}

/* add your medicines like this
#add_medicine("戊酸雌二醇 补佳乐", "1 盒", "每日 1 粒 内服 慢性病")
*/
