require_relative '../config/environment.rb'
require_relative '../app/models/Cult.rb'
require_relative '../app/models/Follower.rb'
require_relative '../app/models/BloodOathe.rb'



def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# 5.times do
#   cult = Cult.new(Faker::University.name, Faker::Address.city, rand(1980..2019), Faker::Quote.famous_last_words)
#   follower = Follower.new(Faker::FunnyName.name, rand(1..100), Faker::Quote.singular_siegler)
#   BloodOathe.new(cult, follower)
# end

follower1 = Follower.new("Drew", 27, "Lost")
follower2 = Follower.new("Tanner", 27, "Blank")
follower3 = Follower.new("Test", 30, "Test Motto")

cult1 = Cult.new("Flat Earth Society", "LA", 2016, "The earth is flat")
cult2 = Cult.new("Apple Fan Club", "San Mateo", 1990, "We love Apple")

drewcult = BloodOathe.new(cult1, follower1)
tannercult = BloodOathe.new(cult1, follower2)
testcult = BloodOathe.new(cult2, follower3)
#drewcult1 = follower1.join_cult(cult1)
#drewcult2 = cult1.recruit_follower(follower1)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
