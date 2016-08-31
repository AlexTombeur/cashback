# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Expense.destroy_all
User.destroy_all
Corporation.destroy_all


lewagon = Corporation.create(name: "Le Wagon")
harry = User.create(
  email: "manager@wagon.com",
  password: "123456",
  first_name: "Cedric",
  last_name: "Radi",
  is_manager: true,
  top_manager: true,
  corporation_id: lewagon.id,
  photo: File.open(File.join(Rails.root, 'app/assets/images/logo.png')),
  )
hank = User.create(
  email: "employee@wagon.com",
  password: "123456",
  first_name: "Alex",
  last_name: "Terrieur",
  is_manager: false,
  top_manager: false,
  manager_id: harry.id,
  corporation_id: lewagon.id,
  photo: File.open(File.join(Rails.root, 'app/assets/images/logo.png')),
  )


expense_a = Expense.create(
  date: "Mon, 29 Aug 2016",
  category: "car",
  amount: 15,
  sub_category: "parking",
  status: "pending",
  title: nil,
  description: "",
  user: hank
  )
expense_b = Expense.create(
  date: "Mon, 29 Aug 2016",
  category: "food",
  amount: 36,
  sub_category: "lunch",
  status: "pending",
  title: nil,
  description: "",
  user: hank
  )
expense_c = Expense.create(
  date: "Mon, 29 Aug 2016",
  category: "car",
  amount: 47,
  sub_category: "fuel",
  status: "pending",
  title: nil,
  description: "",
  user: hank
  )
expense_c = Expense.create(
  date: "Mon, 29 Aug 2016",
  category: "car",
  amount: 9880,
  sub_category: "insurance",
  status: "info",
  title: nil,
  description: "",
  user: hank
  )
expense_d = Expense.create(
  date: "Mon, 29 Aug 2016",
  category: "food",
  amount: 8,
  sub_category: "breakfeast",
  status: "rejected",
  title: nil,
  description: "",
  user: hank
  )
expense_e = Expense.create(
  date: "Mon, 29 Aug 2016",
  category: "car",
  amount: 15,
  sub_category: "parking",
  status: "valid",
  title: nil,
  description: "",
  user: hank
  )
expense_e = Expense.create(
  date: "Mon, 30 Aug 2016",
  category: "car",
  amount: 15,
  sub_category: "parking",
  status: "valid",
  title: nil,
  description: "",
  user: hank
  )
expense_e = Expense.create(
  date: "Mon, 31 Aug 2016",
  category: "car",
  amount: 15,
  sub_category: "parking",
  status: "valid",
  title: nil,
  description: "",
  user: hank
  )
