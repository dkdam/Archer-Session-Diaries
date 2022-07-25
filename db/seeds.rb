User.destroy_all
u1 = User.create :username => 'dkdam', :email => 'dave@something.com', :password => 'chicken'
u2 = User.create :username => 'johnsmith', :email => 'john@something.com', :password => 'chicken'
puts "#{ User.count } users"

Equipment.destroy_all
e1 = Equipment.create :bow => 'Elite Echelon 37', :arrow => 'GT Pierce Tours 400'
e2 = Equipment.create :bow => 'Gillo GT 25', :arrow => 'Skylon Paragons 700'
e3 = Equipment.create :bow => 'Hoyt Invicta 37', :arrow => 'Easton X10s 400'
puts "#{ Equipment.count } equipments"

########## Associations ##########

puts "Equipments and Users"
u1.equipments << e1 << e2
u2.equipments << e3
