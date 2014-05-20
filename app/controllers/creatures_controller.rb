class CreaturesController < ApplicationController

	def index
		@creatures = Creature.all
	end

	def new 
	end

	def create
		creature_params = params.require(:creature).permit(:name, :description)
		# creature_params creates a hash with sanitized data. "require" requires "creature" to be a key in 
		# the params hash. "Require" returns the values in the hash that it maps to. 

		Creature.create(creature_params)
		# call create method using database class Creature. creature_params is the hash that is passed in 

		redirect_to "/creatures" 
		# redirect to index to show all creatures 
	end  

end 