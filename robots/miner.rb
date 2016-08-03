require_relative "robot"
require_relative "../sources/diesel"

class Miner < Robot
	include Diesel
		def self.show_abilities
		puts "\n \nMinero = Excavar"
		end 


end	