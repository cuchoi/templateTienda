# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name: 'Fernando Irarrázaval', email: 'fernandoira@gmail.com', :password => 'foobar12', :password_confirmation => 'foobar12', admin: true)
User.create!(name: 'Cucho', email: 'fbirarra@uc.cl', :password => 'foobar12', :password_confirmation => 'foobar12', admin: false)

Category.create(name: 'Platos calientes', description: 'Platos preparados calientes')

Product.create!(name: 'Pollo Thai', description: 'Pollo con leche de coco, delicioso!', category_id: 1, user_id: 1)
Product.create!(name: 'Producto 2', description: 'Lumami', category_id: 1, user_id: 1)