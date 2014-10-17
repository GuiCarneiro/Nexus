module Nexus
	VERSION_TEAM = "v2.4"

	def self.get_team_by_summoner(id)
		url = (@uri + VERSION_TEAM + "/team/by-summoner/#{id}?api_key=#{@api_key}")		

		team = retrieve_url_ident get(url), id
		team_list = Array.new
		team.each do |t|
			team_list << Nexus::Team.new(t)
		end

		return team_list
	end

	def self.get_team_by_id(id)
		url = (@uri + VERSION_TEAM + "/team/#{id}?api_key=#{@api_key}")

		team = retrieve_url get(url)
		team_list = Array.new
		team[id].each do |t|
			print t
		end

		return team_list
	end
end	