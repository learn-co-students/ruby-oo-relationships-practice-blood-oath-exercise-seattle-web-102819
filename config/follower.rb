class Follower

    attr_reader :age
   
    attr_accessor :name
   
   @@all = []
   
   def initialize(name, age)
    @name = name
    @age = age
    @@all << self
   end
   
   def self.all
       @@all
   end
   
   def life_motto
       "lean bulking is the key to apotheosus"
   end
   
   def cults
       BloodOath.all.select do |n|
           n.follower == self
       end
   end
   
   def join_cult(cult)
       BloodOath.new(cult, self)
   end
   
   def self.of_a_certain_age(age)
       Follower.all.select do |n|
           n.age == age
       end
   end
   
   
   
   
   
   end