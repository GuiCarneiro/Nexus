module Nexus	
	class Champion
		attr_reader :id, :key, :name, :title, :image, :skins, :lore, :blurb, :allytips
		attr_reader :enemytips, :tags, :partype, :info, :stats, :spells
		
		def initialize(params)		
			@id = params["id"]			
			@key = params["key"]
			@name = params["name"]
			@title = params["title"]						
			@image = params["image"]						
			@skins = params["skins"]						
			@lore = params["lore"]						
			@blurb = params["blurb"]						
			@allytips = params["allytips"]						
			@enemytips = params["enemytips"]			
			@tags = params["tags"]			
			@partype = params["partype"]			
			@info = params["info"]
			@stats = params["stats"]
			@spells = params["spells"]
		end
	end #Incomplete
end