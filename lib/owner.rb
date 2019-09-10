require "pry"
class Owner
  attr_accessor :cats, :dogs
  attr_reader :species, :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @species = "human"
    @cats = []
    @dogs = [] 
    @@all << self 
  end 
  
  def self.count
    @@all.count
  end
  
  def say_species 
    "I am a #{@species}."
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.reset_all
    @@all.clear
  end 
  
   def buy_cat(name) 
    Cat.new(name,self)
   end    
   
   def buy_dog(name) 
    Dog.new(name,self)
   end 
   
   def walk_dogs
     @dogs.each{|dog|dog.mood = "happy"}
   end 
   def feed_cats
     @cats.each{|cat|cat.mood = "happy"}
   end 
   def sell_pets
     @dogs.each do |dog|
       dog.mood = "nervous"
       dog.owner = nil
     end     
     @cats.each do |cat|
       cat.mood = "nervous"
       cat.owner = nil
     end 
     
     @dogs.clear
     @cats.clear
   end 
 
end

      
    # bought_cat = Cat.all.find{|cat|cat.name == cat_name}
    # prev_owner = self.class.all.find{|owner|owner.name == bought_cat.owner}
     
    # #take away the cat instance from the previous owner instance 
    # prev_owner.cats.delete(bought_cat)   
     
    # bought_cat.owner = self.name
    # self.cats << bought_cat  