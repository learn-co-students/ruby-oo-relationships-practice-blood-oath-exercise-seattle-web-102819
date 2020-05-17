require "pry"

class Cult
  attr_reader :name, :founding_year
  attr_accessor :slogan, :location
  @@all = []

  def initialize(name, location, founding_year, slogan)
     @name = name 
     @location = location
     @founding_year = founding_year
     @slogan = slogan
     @@all << self 
  end 

  def recruit_follower(follower, initiation_date)
   new_follower = BloodOath.new(self, follower,initiation_date )
  end 
  
  def cult_population
   BloodOath.all.select {|bloodoath| bloodoath.follower}.count 
  end 
  def self.find_by_name(name)
   @@all.select {|cult| cult.name == name}

  end
  def self.find_by_location(location)
   @@all.select {|cult| cult.location == location}
  end
  def self.find_by_founding_year(year)
   @@all.select {|cult| cult.founding_year == year}
  end
  




























  #   def self.all 
#      @@all
#   end 

#   def recruit_follower(follower,initiation_date)
#       BloodOath.new(self, follower, initiation_date)
   
#     end 

#    def cult_population
#     BloodOath.all.select {|bloodoath| bloodoath.cult == self}.count 
#   end 

#    def self.find_by_name(name)
#       @@all.select {|cult| cult.name == name}
#    end 

#   def self.find_by_location(location)
#       @@all.select {|location| cult.location == location}
#   end 
#   def self.find_by_founding_year(year)
#      @@all.select {|cult| cult.founding_year == year}
#   end 
end 