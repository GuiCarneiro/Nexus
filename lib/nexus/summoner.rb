require "../lib/nexus/model/summoner"
require "../lib/nexus/model/runes"
require "../lib/nexus/model/masteries"
module Nexus
	VERSION_SUMMONER = "v1.4"

	def self.get_summoner_by_name(name)
		url = (@uri + VERSION_SUMMONER + "/summoner/by-name/#{name}?api_key=#{@api_key}")		
		return Nexus::Summoner.new(retrieve_url_ident get(url), name)
	end

	def self.get_summoner_by_id(id)
		url = (@uri + VERSION_SUMMONER + "/summoner/#{id}?api_key=#{@api_key}")
		return Nexus::Summoner.new(retrieve_url_ident get(url), id)
	end

	def self.get_summoner_masteries(id)
		url = (@uri + VERSION_SUMMONER + "/summoner/#{id}/masteries?api_key=#{@api_key}") 
		return Nexus::PagesMasteries.new(retrieve_url_ident get(url), id)
	end

	def self.get_summoner_name(id)
		url = (@uri + VERSION_SUMMONER + "/summoner/#{id}/name?api_key=#{@api_key}") 
		return retrieve_url_ident get(url), id
	end

	def self.get_summoner_runes(id)
		url = (@uri + VERSION_SUMMONER + "/summoner/#{id}/runes?api_key=#{@api_key}") 
		return Nexus::PagesRunes.new(retrieve_url_ident get(url), id)
	end
end