module Nexus
	VERSION_GAME = "v1.3"

	def self.get_summoner_games(name)
		summoner = Nexus.get_summoner_by_name(name)
		url = (@uri + VERSION_GAME + "/game/by-summoner/#{summoner.id}/recent?api_key=#{@api_key}")		
		games = retrieve_url get(url)
		g = []

		games["games"].each do |game|
			g.push(Nexus::Game.new(game))
		end

		return (g)
	end

	def self.get_summoner_last_game(name)
		summoner = Nexus.get_summoner_by_name(name)
		url = (@uri + VERSION_GAME + "/game/by-summoner/#{summoner.id}/recent?api_key=#{@api_key}")		
		games = retrieve_url get(url)
		g = []

		games["games"].each do |game|
			return(Nexus::Game.new(game))
		end
	end
end