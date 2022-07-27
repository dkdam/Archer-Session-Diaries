User.destroy_all
u1 = User.create :username => 'dkdam', :email => 'dave@something.com', :password => 'chicken'
u2 = User.create :username => 'johnsmith', :email => 'john@something.com', :password => 'chicken'
puts "#{ User.count } users"

Equipment.destroy_all
e1 = Equipment.create :bow => 'Elite Echelon 37', :arrow => 'GT Pierce Tours 400'
e2 = Equipment.create :bow => 'Gillo GT 25', :arrow => 'Skylon Paragons 700'
e3 = Equipment.create :bow => 'Hoyt Invicta 37', :arrow => 'Easton X10s 400'
puts "#{ Equipment.count } equipments"

Blog.destroy_all
b1 = Blog.create :title => 'My Daily Session', :session => "I walked into the range had a quick breakfast before I start my session. tried to beat my highscore of 670/720 WA 50/720 and at the moment I'm only getting 655-660 which I feel like I plateau. Now I'm laning to reset my form back to square one. "
b2 = Blog.create :title => 'My Casual Session', :session => "Once in a while I like to bring out My Barebow for the fun of it. I find this bow more harder yet more satisfying to shoot for every gold you shoot through."
puts "#{ Blog.count } blogs"

########## Associations ##########

puts "Equipments and Users"
u1.equipments << e1 << e2
u2.equipments << e3

puts "Blogs and Users"
u1.blogs << b1 << b2

