module Nexus
	@status_url = 'http://status.leagueoflegends.com/shards'

	def self.get_shards
		url = (@status_url)		
		return (retrieve_url get(url))
	end

	def self.get_shards_by_region(region)
		url = (@status_url + "/#{region}")
		return (retrieve_url get(url))
	end
end