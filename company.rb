require_relative "robots/flyer"
require_relative "robots/humanoid"
require_relative "robots/miner"
require_relative "person"

# Builds different robots

puts "Construyendo los robots...\n \n"
flyer_robot_1 = Flyer.new("Flyer Robot One")
humanoid_robot_1 = Humanoid.new("Humanoid Robot One")
miner_robot_1 = Miner.new("Miner Robot One")

flyer_robot_2 = Flyer.new("Flyer Robot Two") # robot not released

puts "Lanzando los robots...\n \n"
flyer_robot_1.release!
humanoid_robot_1.release!
miner_robot_1.release!

person_1 = Person.new ("John")
person_2 = Person.new ("Rachel")

puts "Habilidades de los tipos de robots:"
Flyer.show_abilities
Humanoid.show_abilities
Miner.show_abilities

puts "\n \nComprando robots..."
flyer_robot_1.buy! (person_1)
humanoid_robot_1.buy! (person_2)
miner_robot_1.buy! (person_1)
flyer_robot_2.buy! (person_1)

