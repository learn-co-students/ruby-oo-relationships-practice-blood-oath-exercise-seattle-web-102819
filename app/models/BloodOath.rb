class BloodOath
  attr_accessor :follower, :cult
  attr_reader :initiation_date

  @@all = []

    def initialize(cult, follower,initiation_date )
     @follower = follower
     @cult = cult
     @initiation_date = initiation_date
     @@all << self 
    end 

    def self.all
        @@all 
    end 




end 