require_relative "robot"
require_relative "../sources/battery"

class Humanoid < Robot
	include Battery

		def self.show_abilities
		puts "\n \nHumanoide = Comportamiento de humano"
		end 

end	