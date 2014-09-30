require "../lib/Nexus/Model/summoner"
require "../lib/Nexus/Model/runes"
require "../lib/Nexus/Model/masteries"
module Nexus
	VERSION_SUMMONER = "v1.4"

	def self.get_summoner_by_name(name)
		url = (@uri + VERSION_SUMMONER + "/summoner/by-name/#{name}?api_key=#{@api_key}")		
		return Nexus::Summoner.new(retrieve_url get(url), name)
	end

	def self.get_summoner_by_id(id)
		url = (@uri + VERSION_SUMMONER + "/summoner/#{id}?api_key=#{@api_key}")
		return Nexus::Summoner.new(retrieve_url get(url), id)
	end

	def self.get_summoner_masteries(id)
		url = (@uri + VERSION_SUMMONER + "/summoner/#{id}/masteries?api_key=#{@api_key}") 
		return Nexus::Masteries.new(retrieve_url get(url), id)
	end

	def self.get_summoner_name(id)
		url = (@uri + VERSION_SUMMONER + "/summoner/#{id}/name?api_key=#{@api_key}") 
		return retrieve_url get(url), id
	end

	def self.get_summoner_runes(id)
		url = (@uri + VERSION_SUMMONER + "/summoner/#{id}/runes?api_key=#{@api_key}") 
		return Nexus::Runes.new(retrieve_url get(url), id)
	end

	private
		def self.retrieve_url(response, ident)
			response.parsed_response["#{ident.downcase}"]
		end
end