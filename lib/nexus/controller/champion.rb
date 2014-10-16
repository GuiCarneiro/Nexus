module Nexus
	VERSION_CHAMP = "v1.2"

	def self.get_free_champions
		url = (@uri + VERSION_CHAMP + "/champion?freeToPlay=true&api_key=#{@api_key}")		
		champions = retrieve_url get(url)
		champList = Array.new

		champions["champions"].each do |champ|
			champList.push((Nexus.get_champion_by_id(champ['id'])))
		end

		return (champList)
	end

	def self.champion_is_free_to_play?(id)
		url = (@uri + VERSION_CHAMP + "/champion/#{id}?api_key=#{@api_key}")		
		champion = retrieve_url get(url)

		return (champion["freeToPlay"])
	end
end