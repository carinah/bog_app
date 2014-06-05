class CreaturesController < ApplicationController

	def index
		@creatures = Creature.all
	end

	def new 
	end

	def edit
		creature_id = params[:id]
		@creature = Creature.find(creature_id)
		render :edit 
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

	def show 
		creature_id = params[:id]
		@creature = Creature.find(creature_id)
		render :show 
	end 

	def update 
		creature_id = params[:id]
		@creature = Creature.find(creature_id)
		# get updated data
		updated_creature = params.require(:creature).permit(:name, :description) 
		# update the creature
		@creature.update_attributes(updated_creature)
		# redirect to show 
		redirect_to "/show"
	end 

	def delete 
		creature_id = params[:id]
		@creature = Creature.find(creature_id)
		render :delete 
	end 

	def destroy 
		creature_id = params[:id]
		@creature = Creature.find(creature_id)
		Creature.delete(creature_id)

		redirect_to "/creatures"
	end 



end 