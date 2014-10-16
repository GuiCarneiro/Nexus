module Nexus
	VERSION_MATCH = "v2.2"

	def self.get_summoner_matches(id, option = "RANKED_SOLO_5x5")
		url = (@uri + VERSION_MATCH + "/matchhistory/#{id}?rankedQueues=#{option}&api_key=#{@api_key}")		
		matches = retrieve_url get(url)
		matchesList = Array.new

		if matches != nil
			matches["matches"].each do |match|
				matchesList.push((Nexus::Match.new(match)))
			end
		end

		return (matchesList)
	end

	def self.get_match(id)
		url = (@uri + VERSION_MATCH + "/match/#{id}?api_key=#{@api_key}")		
		match = retrieve_url get(url)

		if match != nil
			return ((Nexus::Match.new(match)))
		end
	end

end