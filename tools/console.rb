require_relative '../config/environment.rb'

require_relative '../config/blood_oath.rb'
require_relative '../config/cult.rb'
require_relative '../config/follower.rb'
require 'date'
require 'time'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


puts "Mwahahaha!" # just in case pry is buggy and exits

chicken_fodders = Cult.new("chicken_fodders", "the shack behind the walmart")

puts chicken_fodders.location

jacob = Follower.new("jacob", 56)

chicken_fodders.recruit_follower(jacob)

puts chicken_fodders.cult_population

# puts Cult.find_by_name("chicken_fodders")

# puts Cult.find_by_founding_year(2019)

# puts Cult.find_by_location("the shack behind the walmart")

dirty_bulkers = Cult.new("dirty_bulkers", "Dairy aisle in the walmart")

dirty_bulkers.recruit_follower(jacob)

vegetarians = Cult.new("vegetarians", "trader joes")

jacob.join_cult(vegetarians)

#puts jacob.cults

puts Follower.of_a_certain_age(56)