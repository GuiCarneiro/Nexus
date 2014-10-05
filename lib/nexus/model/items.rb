module Nexus	
	class Item
		attr_reader :id, :name, :description, :sanitizedDescription, :tags, :image, :stats, :stacks, :consumable, :colloq, :plaintext, :gold_base, :gold_total, :gold_sell

		def initialize(params)		
			@id = params["id"]
			@name = params["name"]
			@gold_base = params["gold"]["base"]			
			@gold_total = params["gold"]["total"]						
			@gold_sell = params["gold"]["sell"]
			@description = params["description"]
			@sanitizedDescription = params["sanitizedDescription"]
			@colloq = params["colloq"]
			@plaintext = params["plaintext"]
			@consumable = params["consumed"]
			@stacks = params["stacks"]
			@tags = params["tags"]			
			@image = params["image"]
			@stats = params["stats"]
		end
	end
end