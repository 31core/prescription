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

#let prescription = yaml(sys.inputs.src)

#let title = prescription.title
#let name = prescription.name
#let gender = prescription.gender
#let age = prescription.age
#let diagnosis = prescription.diagnosis
#let department = prescription.department
#let doctor = prescription.doctor
#let amount = prescription.amount

#for entry in prescription.medicines [
  #add_medicine(entry.name + " " + entry.common-name, entry.amount, entry.usage)
]
