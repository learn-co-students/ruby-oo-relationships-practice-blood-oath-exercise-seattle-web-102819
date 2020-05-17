class BloodOath
    @@all = []
    attr_accessor :follower, :cult, :initiation_date
    def initialize (follower, cult, initiation_date)
        @follower = follower
        @cult = cult
        @initiation_date = initiation_date
        @@all<<self
    end

    def self.all
        @@all 
    end 
end