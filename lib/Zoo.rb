class Zoo
  attr_reader :name, :location
  attr_accessor :animals

  @@all = []

  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
    @animals = []
  end

  def animal_species
    self.animals.map {|animal| animal.species }.uniq
  end

  def find_by_species(species)
    self.animals.select { |animal| animal.species == species}
  end

  def animal_nicknames
    self.animals.map { |animal| animal.nickname }
  end

  def self.find_by_location(location)
    @@all.select { |zoo| zoo.location == location }
  end

  def self.all
    @@all
  end
end
