class Owner
  # code goes here
  attr_accessor :name, :pets, :cat, :dog, :fish
  attr_reader :species

  @@all = []

  def initialize(species, pets={fishes: [], cats: [], dogs: []})
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end


  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def self.reset_all
    @@all.clear
  end

  def walk_dogs
    if dog == walk
      puts Dog.mood = "happy"
    else
      nil
    end
  end

  def play_with_cats



  end

  def feed_fish

  end

  def sell_pets

  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
