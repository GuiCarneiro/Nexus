module Nexus
	class PagesMasteries

		attr_reader :id, :name, :pages

		def initialize(params)
			@id = params["summonerId"]
			@name = Nexus.get_summoner_name(params["summonerId"].to_s)
			@pages = Array.new()
			params["pages"].each do |p|
				@pages.push(Nexus::MPage.new(p))
			end
		end
	end

	class MPage
		attr_reader :id, :name, :current, :slots

		def initialize(params)
			@id = params["id"]
			@name = params["name"]
			@current = params["current"]

			@masteries = Array.new()

			if(params["masteries"] != nil)	
				params["masteries"].each do |m|
					@masteries.push(Nexus.get_mastery_by_id(m["id"]))
				end
			else
				@masteries = []
			end
		end
	end

	class Mastery

		attr_reader :id, :name, :description, :sanitizedDescription, :level, :prereq, :image, :tier, :type

		def initialize(params)		
			@id = params["id"]
			@name = params["name"]
			@description = params["description"]
			@sanitizedDescription = params["sanitizedDescription"]
			@level = params["ranks"]
			@prereq_id = params["prereq"]
			@image = params["image"]
		end
	end
end