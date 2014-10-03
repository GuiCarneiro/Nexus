module Nexus
	class PagesRunes

		attr_reader :id, :name, :pages

		def initialize(params)
			@id = params["summonerId"]
			@name = Nexus.get_summoner_name(params["summonerId"].to_s)
			@pages = Array.new()
			params["pages"].each do |p|
				@pages.push(Nexus::RPage.new(p))
			end
		end
	end

	class RPage
		attr_reader :id, :name, :current, :runes

		def initialize(params)
			@id = params["id"]
			@name = params["name"]
			@current = params["current"]

			@runes = Array.new()

			if(params["slots"] != nil)	
				params["slots"].each do |r|
					@runes.push(Nexus.get_rune_by_id(r["runeId"]))
				end
			else
				@runes = []
			end
		end
	end

	class Rune
		attr_reader :id, :name, :description, :sanitizedDescription, :tags, :image, :stats, :tier, :type

		def initialize(params)		
			@id = params["id"]
			@name = params["name"]
			@description = params["description"]
			@sanitizedDescription = params["sanitizedDescription"]
			@tags = params["tags"]
			@image = params["image"]
			@stats = params["stats"]
			@tier = params["rune"]["tier"]
			@type = params["rune"]["type"]
		end
	end

end