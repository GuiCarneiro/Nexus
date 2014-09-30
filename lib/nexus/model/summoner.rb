module Nexus
	class Summoner

		attr_reader :id, :name, :icon, :level, :revisionDate

		def initialize(params)
			@id = params["id"]
			@name = params["name"]
			@icon = params["profileIconId"]
			@level = params["summonerLevel"]
			@revisionDate = params["revisionDate"]
		end
	end	
end