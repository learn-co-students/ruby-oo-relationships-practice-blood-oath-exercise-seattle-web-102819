class Cult

    attr_reader :name, :location, :founding_year, :slogan

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        #@followers = []
        @@all << self
    end

    def self.all
        @@all
    end

    def recruit_follower(follower)
        BloodOathe.new(self,follower)
    end

    def cult_population
        pop_of_cult = BloodOathe.all.select do |bloodoathe|
            bloodoathe.cult == self
        end.length
    end

    def find_by_name(string)
       found_cult_name = @@all.find do |cult|
            cult.name == string
        end
    end
    
    def find_by_location(string)
        found_cult_location = @@all.select do |cult_loc|
            cult_loc.location == string
        end     
    end

    def find_by_founding_year(num)
    found_cult_year == @@all.select do |cult_year|
        cult_year.founding_year == num
        end
    end

end