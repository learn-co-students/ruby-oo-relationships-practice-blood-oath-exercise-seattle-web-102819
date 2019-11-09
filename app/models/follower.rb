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
  def cults
    BloodOath.all.select {|bloodoath| bloodoath.follower == self}.map {|bloodoath| bloodoath.cult}
  end 
  def join_cult(cult,initiation_date )
    BloodOath.new(cult, self,initiation_date)
  end 
 def self.of_a_certain_age(age)
   @@all.select {|follower| follower.age >= age}
 end 

end 
































  #   def join_cult(cult, initiation_date)
#      BloodOath.new(cult, self, initiation_date)
   
#     end 
  
#     def self.of_a_certain_age(age)
#      @@all.select{|folloer|follower.age >= age}
#   end
  
#   def find_cults
#     list_of_cults = []
#         BloodOath.all.select |oath|
#         if oath.follower == self
#             list_of_cults << oath.cult
#         end
#     end
#     list_of_cults
#   end


  

#   def fellow_cult_members
#     BloodOath.all.select {|oath| oath.follower.find_cults == self.find_cults}.uniq
#   end 

# end 




    