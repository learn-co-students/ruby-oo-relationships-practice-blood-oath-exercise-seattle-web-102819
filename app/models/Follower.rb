class Follower

    attr_reader :name, :age, :life_motto
    attr_accessor :cults

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def self.all
        @@all
    end

    def cults
        cultz = []
        BloodOathe.all.select do |bloodoathe|
            if bloodoathe.follower == self
                cultz << bloodoathe.cult
            end 
        end
        cultz
    end

    def join_cult(cult)
        BloodOathe.new(cult, self)
    end

    def self.of_a_certain_age(num)
        self.all.select do |inst1| inst1.age >= num
        end
s    end
end