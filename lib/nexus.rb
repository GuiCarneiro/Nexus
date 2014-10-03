require "httparty"
require '../lib/nexus/summoner'
require '../lib/nexus/static'

module Nexus
  include HTTParty

	attr_accessor :api_key	
	attr_accessor :uri
	attr_accessor :region

	def self.api_key(api_key)
		@api_key = api_key.to_s
	end

	def self.connect_to(region)
		case region.to_s.downcase

			when "eune", "eu nordic & east", "eu nordic and east" 
				@uri = "https://eune.api.pvp.net/api/lol/eune/"
				@region = "eune"

			when "euw", "eu west"
				@uri = "https://euw.api.pvp.net/api/lol/euw/"
				@region = "euw"

			when "kr", "korea" 
				@uri = "https://kr.api.pvp.net/api/lol/kr/"
				@region = "kr"

			when "br", "brasil", "brazil"
				@uri = "https://br.api.pvp.net/api/lol/br/"
				@region = "br"

			when "lan", "latin america north"
				@uri = "https://lan.api.pvp.net/api/lol/lan/"
				@region = "lan"				
			
			when "las", "latin america south"
				@uri = "https://las.api.pvp.net/api/lol/las/"
				@region = "las"
						
			when "na", "north america"
				@uri = "https://na.api.pvp.net/api/lol/na/"
				@region = "na"
						
			when "oce", "oceania"
				@uri = "https://oce.api.pvp.net/api/lol/oce/"
				@region = "oce"
						
			when "ru", "russia"
				@uri = "https://ru.api.pvp.net/api/lol/ru/"
				@region = "ru"
									
			when "tr", "turkey"
				@uri = "https://tr.api.pvp.net/api/lol/tr/"
				@region = "tr"
							
			else
				nil

		end
	end

	private
		def self.retrieve_url_ident(response, ident)
			response.parsed_response["#{ident.to_s.downcase}"]
		end

		def self.retrieve_url(response)
			response.parsed_response
		end
end
