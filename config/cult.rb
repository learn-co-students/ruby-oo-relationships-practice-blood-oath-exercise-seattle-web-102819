class Cult

    attr_reader :founding_year

    attr_accessor :name, :location

@@all = []

 def initialize(name, location)
    @name = name
    @location = location
    @founding_year = Time.new.year
    @@all << self
 end

def slogan
    "all glory to the chicken father"
end

def self.all
    @@all
end

def recruit_follower(follower)
    BloodOath.new(self, follower)
end

def cult_population
    BloodOath.all.select do |n|
        n.cult == self
    end.length
end

def self.find_by_name(cult_name)
    Cult.all.select do |n|
        n.follower.name == cult_name
    end
end

def self.find_by_location(cult_location)
    Cult.all.select do |n|
        n.location == cult_location
    end
end

def self.find_by_founding_year(founding_year)
    Cult.all.select do |n|
        n.founding_year == founding_year
    end
end






end