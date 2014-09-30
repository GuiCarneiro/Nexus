module Nexus
	class Masteries

		attr_reader :id, :name, :pages

		def initialize(params)
			@id = params["summonerId"]
			@name = Nexus.get_summoner_name(params["summonerId"].to_s)
			@pages = Array.new()
			params["pages"].each do |p|
				@pages.push(Nexus::PageMasterie.new(p))
			end
		end
	end
	private	
		class PageMasterie
			attr_reader :id, :name, :current, :slots

			def initialize(params)
				@id = params["id"]
				@name = params["name"]
				@current = params["current"]
				@slots = params["masteries"]
			end
		end	
end