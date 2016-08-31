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
man = User.create(
  email: "ced@wagon.com",
  password: "azerty",
  first_name: "Cedric",
  last_name: "Radi",
  is_manager: true,
  top_manager: true,
  corporation_id: lewagon.id,
  photo: File.open(File.join(Rails.root, 'app/assets/images/ced.jpg')),
  )
empl = User.create(
  email: "alex@wagon.com",
  password: "azerty",
  first_name: "Alex",
  last_name: "Terrieur",
  is_manager: false,
  top_manager: false,
  manager_id: man.id,
  corporation_id: lewagon.id,
  photo: File.open(File.join(Rails.root, 'app/assets/images/logo.png')),
  )
empl2 = User.create(
  email: "annecollet@wagon.com",
  password: "azerty",
  first_name: "Anne",
  last_name: "Collet",
  is_manager: false,
  top_manager: false,
  manager_id: man.id,
  corporation_id: lewagon.id,
  photo: File.open(File.join(Rails.root, 'app/assets/images/logo.png')),
  )
empl3 = User.create(
  email: "elonmusk@wagon.com",
  password: "azerty",
  first_name: "Elon",
  last_name: "Musk",
  is_manager: false,
  top_manager: false,
  manager_id: man.id,
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
  user: empl
  )
expense_b = Expense.create(
  date: "Mon, 29 Aug 2016",
  category: "food",
  amount: 36,
  sub_category: "lunch",
  status: "pending",
  title: nil,
  description: "",
  user: empl
  )
expense_c = Expense.create(
  date: "Mon, 29 Aug 2016",
  category: "car",
  amount: 47,
  sub_category: "fuel",
  status: "pending",
  title: nil,
  description: "",
  user: empl
  )
expense_c = Expense.create(
  date: "Mon, 29 Aug 2016",
  category: "car",
  amount: 9880,
  sub_category: "insurance",
  status: "info",
  title: nil,
  description: "",
  user: empl
  )
expense_d = Expense.create(
  date: "Mon, 29 Aug 2016",
  category: "food",
  amount: 8,
  sub_category: "breakfeast",
  status: "rejected",
  title: nil,
  description: "",
  user: empl
  )
expense_e = Expense.create(
  date: "Mon, 29 Aug 2016",
  category: "car",
  amount: 15,
  sub_category: "parking",
  status: "valid",
  title: nil,
  description: "",
  user: empl
  )
expense_f = Expense.create(
  date: "Mon, 30 Aug 2016",
  category: "car",
  amount: 15,
  sub_category: "parking",
  status: "valid",
  title: nil,
  description: "",
  user: empl
  )
expense_g = Expense.create(
  date: "Mon, 31 Aug 2016",
  category: "car",
  amount: 15,
  sub_category: "parking",
  status: "valid",
  title: nil,
  description: "",
  user: empl
  )




expense_a_man = Expense.create(
  date: "Mon, 29 Aug 2016",
  category: "car",
  amount: 15,
  sub_category: "parking",
  status: "valid",
  title: nil,
  description: "",
  user: man
  )
expense_b_man = Expense.create(
  date: "Mon, 29 Aug 2016",
  category: "food",
  amount: 36,
  sub_category: "lunch",
  status: "valid",
  title: nil,
  description: "",
  user: man
  )
expense_c_man = Expense.create(
  date: "Mon, 29 Aug 2016",
  category: "car",
  amount: 47,
  sub_category: "fuel",
  status: "valid",
  title: nil,
  description: "",
  user: man
  )
expense_c_man = Expense.create(
  date: "Mon, 29 Aug 2016",
  category: "car",
  amount: 9880,
  sub_category: "insurance",
  status: "info",
  title: nil,
  description: "",
  user: man
  )
expense_d_man = Expense.create(
  date: "Mon, 29 Aug 2016",
  category: "food",
  amount: 8,
  sub_category: "breakfeast",
  status: "rejected",
  title: nil,
  description: "",
  user: man
  )
expense_e_man = Expense.create(
  date: "Mon, 29 Aug 2016",
  category: "car",
  amount: 15,
  sub_category: "parking",
  status: "valid",
  title: nil,
  description: "",
  user: man
  )
expense_f_man = Expense.create(
  date: "Mon, 30 Aug 2016",
  category: "car",
  amount: 15,
  sub_category: "parking",
  status: "valid",
  title: nil,
  description: "",
  user: man
  )
expense_g_man = Expense.create(
  date: "Mon, 31 Aug 2016",
  category: "car",
  amount: 15,
  sub_category: "parking",
  status: "valid",
  title: nil,
  description: "",
  user: man
  )




expense_a_empl2 = Expense.create(
  date: "Mon, 29 Aug 2016",
  category: "car",
  amount: 15,
  sub_category: "parking",
  status: "valid",
  title: nil,
  description: "",
  user: empl2
  )
expense_b_empl2 = Expense.create(
  date: "Mon, 29 Aug 2016",
  category: "food",
  amount: 36,
  sub_category: "lunch",
  status: "valid",
  title: nil,
  description: "",
  user: empl2
  )
expense_c_empl2 = Expense.create(
  date: "Mon, 29 Aug 2016",
  category: "car",
  amount: 47,
  sub_category: "fuel",
  status: "valid",
  title: nil,
  description: "",
  user: empl2
  )
expense_c_empl2 = Expense.create(
  date: "Mon, 29 Aug 2016",
  category: "car",
  amount: 9880,
  sub_category: "insurance",
  status: "info",
  title: nil,
  description: "",
  user: empl2
  )
expense_d_empl2 = Expense.create(
  date: "Mon, 29 Aug 2016",
  category: "food",
  amount: 8,
  sub_category: "breakfeast",
  status: "rejected",
  title: nil,
  description: "",
  user: empl2
  )
expense_e_empl2 = Expense.create(
  date: "Mon, 29 Aug 2016",
  category: "car",
  amount: 15,
  sub_category: "parking",
  status: "valid",
  title: nil,
  description: "",
  user: empl2
  )
expense_f_empl2 = Expense.create(
  date: "Mon, 30 Aug 2016",
  category: "car",
  amount: 15,
  sub_category: "parking",
  status: "valid",
  title: nil,
  description: "",
  user: empl2
  )
expense_g_empl2 = Expense.create(
  date: "Mon, 31 Aug 2016",
  category: "car",
  amount: 15,
  sub_category: "parking",
  status: "valid",
  title: nil,
  description: "",
  user: empl2
  )




expense_a_empl3 = Expense.create(
  date: "Mon, 29 Aug 2016",
  category: "car",
  amount: 15,
  sub_category: "parking",
  status: "valid",
  title: nil,
  description: "",
  user: empl3
  )
expense_b_empl3 = Expense.create(
  date: "Mon, 29 Aug 2016",
  category: "food",
  amount: 36,
  sub_category: "lunch",
  status: "valid",
  title: nil,
  description: "",
  user: empl3
  )
expense_c_empl3 = Expense.create(
  date: "Mon, 29 Aug 2016",
  category: "car",
  amount: 47,
  sub_category: "fuel",
  status: "valid",
  title: nil,
  description: "",
  user: empl3
  )
expense_c_empl3 = Expense.create(
  date: "Mon, 29 Aug 2016",
  category: "car",
  amount: 9880,
  sub_category: "insurance",
  status: "info",
  title: nil,
  description: "",
  user: empl3
  )
expense_d_empl3 = Expense.create(
  date: "Mon, 29 Aug 2016",
  category: "food",
  amount: 8,
  sub_category: "breakfeast",
  status: "rejected",
  title: nil,
  description: "",
  user: empl3
  )
expense_e_empl3 = Expense.create(
  date: "Mon, 29 Aug 2016",
  category: "car",
  amount: 15,
  sub_category: "parking",
  status: "valid",
  title: nil,
  description: "",
  user: empl3
  )
expense_f_empl3 = Expense.create(
  date: "Mon, 30 Aug 2016",
  category: "car",
  amount: 15,
  sub_category: "parking",
  status: "valid",
  title: nil,
  description: "",
  user: empl3
  )
expense_g_empl3 = Expense.create(
  date: "Mon, 31 Aug 2016",
  category: "car",
  amount: 15,
  sub_category: "parking",
  status: "valid",
  title: nil,
  description: "",
  user: empl3
  )
