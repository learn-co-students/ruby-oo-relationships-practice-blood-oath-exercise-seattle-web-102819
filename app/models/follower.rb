require 'pry'
class Follower
    @@all = []

    attr_accessor :name, :age, :life_motto
    def initialize(name, age, life_motto)
        @name = name 
        @age = age
        @life_motto = life_motto

        @@all << self 
    end

    def cults
        cults = [ ]

        BloodOath.all.select do |bo|
            if bo.follower == self
                cults << bo.cult
            end
        end
        cults
    end

    def join_cult(cult, date)
       BloodOath.new(self, cult, date)
    end 

    def self.all
        @@all
    end 

    def self.of_a_certain_age(age)
        self.all.select {|fl| fl.age >= age}
    end 

    def my_cults_slogans
        slogans = []
        self.cults.each do |cult|
            slogans << cult.slogan 
        end
        puts slogans
        slogans

        #BloodOath.all.map [|blood_oath| blood_oath.cult.slogan]
    end

    def self.most_active
        max = 0
        active = nil
        @@all.each do |fl|
            if fl.cults.length > max 
                max = fl.cults.length
                active = fl
            end 
        end 
        active 
    end

    


end