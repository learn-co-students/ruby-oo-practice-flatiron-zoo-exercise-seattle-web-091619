class Animal
  attr_accessor :weight, :zoo
  attr_reader :species, :nickname

  @@all = []

  def initialize(species, weight, nickname, zoo)
    @species = species
    @weight = weight
    @nickname = nickname
    @zoo = zoo
    @zoo.animals << self
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_species(species)
    @@all.find_all { |animal| animal.species == species }
  end

end
