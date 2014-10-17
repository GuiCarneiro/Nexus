module Nexus
	VERSION_STATS = "v1.3"

	def self.get_summoner_stats_per_champion(id, season = nil)

		if season != nil
			url = (@uri + VERSION_STATS + "/stats/by-summoner/#{id}/ranked?season=#{season}&api_key=#{@api_key}")
		else
			url = (@uri + VERSION_STATS + "/stats/by-summoner/#{id}/ranked?api_key=#{@api_key}")
		end

		stats = retrieve_url get(url)
		stats_list = Array.new

		stats["champions"].each do |c|
			stats_list << Nexus::ChampStats.new(c["stats"])
		end


		return stats_list
	end

	def self.get_summoner_stats_per_map(id, season = nil)

		if season != nil
			url = (@uri + VERSION_STATS + "/stats/by-summoner/#{id}/summary?season=#{season}&api_key=#{@api_key}")
		else
			url = (@uri + VERSION_STATS + "/stats/by-summoner/#{id}/summary?api_key=#{@api_key}")
		end

		stats = retrieve_url get(url)
		stats_list = Array.new

		stats["playerStatSummaries"].each do |s|
			stats_list << Nexus::MapStats.new(s)
		end


		return stats_list
	end

end