class BloodOathe

    attr_reader :initiation_date
    attr_accessor :cult, :follower

    @@all = []

    def initialize(cult, follower)
        @cult = cult
        @follower = follower
        @initiation_date = Time.now
        @@all << self
    end

    def self.all
        @@all
    end

end