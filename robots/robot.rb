class Robot 
	@@built_robots = 0
	@@released_robots = 0
	@@bought_robots = 0

	def initialize(name)
		@name = name
		@released = false
		@bought = false
		@@built_robots+=1
		@name = name
	end	

	def release!
		@released = true
		@@released_robots += 1  
	end

	def buy!(person)
		if @released && !@bought
			@bought = true	
			@person = person
			@@bought_robots += 1
			puts "El robot "+@name+" fue comprado por "+@person.name 
		else
			puts "Hubo un error al intentar comprar el robot "+@name
		end 
	end	

	def show_distance(amount)
		puts "distancia recorrida"+distance(amount).to_s+" km"
	end	

	def self.show_report
		puts "Robots construidos al momento: "+@@built_robots.to_s
		puts "Robots lanzados al momento: "+@@released_robots.to_s
		puts "Robots comprados al momento: "+@@bought_robots.to_s
	end	



end	