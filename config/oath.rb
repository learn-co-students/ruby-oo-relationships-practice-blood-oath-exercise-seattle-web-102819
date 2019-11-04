class BloodOath

    attr_reader :date_of_initiation
    
    attr_accessor :cult, :follower
    
        @@all = []
    
    def initialize(cult, follower)
        @cult = cult
        @follower = follower
        @date_of_initiation = DateTime.now
        @@all << self
    end
    
    def self.all
        @@all
    end
    
    end