# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

DEFAULT_PASSWORD = '123456789'
u = User.create!(:email => 'root@example.com',
                 :password => DEFAULT_PASSWORD,
                 :password_confirmation => DEFAULT_PASSWORD
                )
u.roles << :root
u.save!

puts "=== First user created ==="
puts "Email: #{u.email}"
puts "Password: #{DEFAULT_PASSWORD}"

