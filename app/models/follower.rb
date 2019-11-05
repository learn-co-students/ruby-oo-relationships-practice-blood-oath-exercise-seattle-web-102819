class Follower
    attr_reader :name, :age
    attr_accessor :life_motto
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

  def join_cult(cult, initiation_date)
     BloodOath.new(cult, self, initiation_date)
   
    end 
  
    def self.of_a_certain_age(age)
     @@all.select{|folloer|follower.age >= age}
  end 


end 




    