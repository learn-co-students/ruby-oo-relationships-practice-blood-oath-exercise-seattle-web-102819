require 'pry'
class Cult
 
    attr_accessor :name, :location, :founding_year, :slogan

    @@all = []
    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan

        @@all << self
    end

    def recruit_follower(follower, date)
        BloodOath.new(follower, self, date)
    end

    def cult_population
        BloodOath.all.select {|bo| bo.cult == self}.length
    end

    def self.all
        @all
    end

    def self.find_by_name(name)
        @@all.find {|cult| cult.name == name}
    end

    def self.find_by_location(location)
       @@all.select {|cult|cult.location == location}
    end 

    def self.find_by_founding_year(year)
        @@all.select {|cult| cult.founding_year == year}
    end




end
