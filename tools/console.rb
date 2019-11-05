require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

follower_1 = Follower.new("m", 25, "life_motto_1")
follower_2 = Follower.new("k", 240, "life_motto_2")
follower_3 = Follower.new("l", 25, "life_motto_3")


cults_1 = Cult.new("a", "seattle", 2000, "slogan_1")
cults_2 = Cult.new("b", "renton", 2001, "slogan_2")
cults_3 = Cult.new("c", "ket", 2001, "slogan_3")


BloodOath.new(cults_1, follower_1, 1884)
cults_1.recruit_follower(follower_1,1994)
binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
