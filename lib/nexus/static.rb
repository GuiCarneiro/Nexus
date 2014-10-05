module Nexus

	attr_accessor :global_uri

	VERSION_STATIC = "v1.2"

	@global_uri = "https://global.api.pvp.net/api/lol/static-data/"

	def self.get_champion_by_name(champ_name,champData = "all")
		url = ("#{@global_uri}#{@region}/#{VERSION_STATIC}/champion?champData=#{champData}&api_key=#{@api_key}")
		response = retrieve_url get(url)
		return (response["data"][champ_name.to_s])
	end

	def self.get_champion_by_id(champ_id, champData = "all")
		url = ("#{@global_uri}#{@region}/#{VERSION_STATIC}/champion/#{champ_id}?champData=#{champData}&api_key=#{@api_key}")
		return (retrieve_url get(url))
	end

	def self.get_items(itemData = "all")
		url = ("#{@global_uri}#{@region}/#{VERSION_STATIC}/item?itemListData=#{itemData}&api_key=#{@api_key}")
		response = retrieve_url get(url)
		return (response["data"])
	end

	def self.get_item_by_id(item_id, itemData = "all")
		url = ("#{@global_uri}#{@region}/#{VERSION_STATIC}/item/#{item_id}?itemData=#{itemData}&api_key=#{@api_key}")
		return Nexus::Item.new(retrieve_url get(url))
	end


	def self.get_masteries(masteryData = "all")
		url = ("#{@global_uri}#{@region}/#{VERSION_STATIC}/mastery?masteryListData=#{masteryData}&api_key=#{@api_key}")
		response = retrieve_url get(url)
		return (response["data"])
	end

	def self.get_mastery_by_id(mastery_id, masteryData = "all")
		url = ("#{@global_uri}#{@region}/#{VERSION_STATIC}/mastery/#{mastery_id}?masteryData=#{masteryData}&api_key=#{@api_key}")
		return Nexus::Mastery.new(retrieve_url get(url))
	end

	def self.get_runes(runeData = "all")
		url = ("#{@global_uri}#{@region}/#{VERSION_STATIC}/rune?runeListData=#{runeData}&api_key=#{@api_key}")
		response = retrieve_url get(url)
		return (response["data"])
	end

	def self.get_rune_by_id(rune_id, runeData = "all")
		url = ("#{@global_uri}#{@region}/#{VERSION_STATIC}/rune/#{rune_id}?runeData=#{runeData}&api_key=#{@api_key}")
		return (retrieve_url get(url))
	end

	def self.get_runes(runeData = "all")
		url = ("#{@global_uri}#{@region}/#{VERSION_STATIC}/rune?runeListData=#{runeData}&api_key=#{@api_key}")
		response = retrieve_url get(url)
		return (response["data"])
	end

	def self.get_rune_by_id(rune_id, runeData = "all")
		url = ("#{@global_uri}#{@region}/#{VERSION_STATIC}/rune/#{rune_id}?runeData=#{runeData}&api_key=#{@api_key}")
		return Nexus::Rune.new(retrieve_url get(url))
	end

	def self.get_realm
		url = ("#{@global_uri}#{@region}/#{VERSION_STATIC}/realm?api_key=#{@api_key}")
		response = retrieve_url get(url)
		return (response)
	end

	def self.get_versions
		url = ("#{@global_uri}#{@region}/#{VERSION_STATIC}/versions?api_key=#{@api_key}")
		response = retrieve_url get(url)
		return (response)
	end
end