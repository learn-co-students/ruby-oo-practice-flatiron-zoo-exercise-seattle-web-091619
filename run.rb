require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoo1 = Zoo.new("Potato Zoo", "Idaho")
zoo2 = Zoo.new("Pineapple Zoo", "Hawaii")

pig = Animal.new("Pig", 500, "Bacon", zoo1)
cow = Animal.new("Cow", 800, "Hamburger", zoo1)

dog = Animal.new("Dog", 45, "Big Boy", zoo2)
jellyfish = Animal.new("Jellyfish", 1, "Slimy", zoo2)
caucasian_mountain_dog = Animal.new("Dog", 220, "Tiny", zoo2)

binding.pry
puts "done"
