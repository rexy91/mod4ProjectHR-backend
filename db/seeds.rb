# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Manager.destroy_all
Company.destroy_all
Employee.destroy_all


m1 = Manager.create(name:'Saima', username:'saima2020', password:'12345')
m2 = Manager.create(name:'Jo', username:'jo2020', password:'12345')

c1 = Company.create(name: 'Plantpedia', manager: m1, staff_count: 57 )
c2 = Company.create(name: 'Instagram', manager: m2, staff_count: 38 )

e1 = Employee.create(company: c1, name: 'rex', date_of_birth: 'yesterday', email: 'hello')
e2 = Employee.create(company: c2, name: 'rex', date_of_birth: 'yesterday', email: 'hello')