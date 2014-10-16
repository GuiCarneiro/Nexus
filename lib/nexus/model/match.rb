module Nexus
	class Match

		attr_reader :version, :mapId, :season, :matchDuration, :matchCreation, :matchType, :matchId, :queueType, :matchMode
		attr_reader :unrealKills, :item0, :item1, :item2, :item3, :item4, :item5, :item6, :totalDamageTaken
		attr_reader :pentaKills, :sightWardsBoughtInGame, :winner, :magicDamageDealt, :wardsKilled, :largestCriticalStrike, :trueDamageDealt, :doubleKills, :physicalDamageDealt
		attr_reader :tripleKills, :deaths, :firstBloodAssist, :magicDamageDealtToChampions, :assists, :visionWardsBoughtInGame, :totalTimeCrowdControlDealt, :champLevel, :physicalDamageTaken
		attr_reader :totalDamageDealt, :largestKillingSpree, :inhibitorKills, :minionsKilled, :towerKills, :physicalDamageDealtToChampions, :quadraKills, :goldSpent, :totalDamageDealtToChampions
		attr_reader :goldEarned, :mapId, :season, :matchDuration, :matchCreation, :matchType, :matchId, :queueType, :matchMode			
		attr_reader :goldEarned, :neutralMinionsKilledTeamJungle, :firstBloodKill, :firstTowerKill, :wardsPlaced, :trueDamageDealtToChampions, :killingSprees, :firstInhibitorKill, :totalScoreRank
		attr_reader :totalUnitsHealed, :kills, :firstInhibitorAssist, :totalPlayerScore, :neutralMinionsKilledEnemyJungle, :magicDamageTaken, :largestMultiKill, :totalHeal, :neutralMinionsKilledEnemyJungle
		attr_reader :objectivePlayerScore, :firstTowerAssist, :trueDamageTaken, :combatPlayerScore, :neutralMinionsKilled, :role, :lane

		attr_reader :xpDiffZeroToTen, :xpDiffTenToTwennty, :xpDiffTwentyToThirty
		attr_reader :damageTakenDiffZeroToTen, :damageTakenDiffTenToTwennty, :damageTakenDiffTwentyToThirty
		attr_reader :xpPerMinZeroToTen, :xpPerMinTenToTwennty, :xpPerMinTwentyToThirty
		attr_reader :goldPerMinZeroToTen, :goldPerMinTenToTwennty, :goldPerMinTwentyToThirty
		attr_reader :creepsPerMinZeroToTen, :creepsPerMinTenToTwennty, :creepsPerMinTwentyToThirty
		attr_reader :creepsPerMinZeroToTen, :creepsPerMinTenToTwennty, :creepsPerMinTwentyToThirty
		attr_reader :csDiffZeroToTen, :csDiffTenToTwennty, :csDiffTwentyToThirty
		attr_reader :damageTakenPerMinZeroToTen, :damageTakenPerMinTenToTwennty, :damageTakenPerMinTwentyToThirty
		attr_reader :runes, :masteries
		attr_reader :profileIcon, :matchHistoryUri, :summonerName, :summonerId
		def initialize(params)

			/ General Stats /
			@version = params["matchVersion"]
			@mapId = params["mapId"]
			@season = params["season"]
			@matchDuration = params["matchDuration"]
			@matchCreation = params["matchCreation"]
			@matchType = params["matchType"]
			@matchId = params["matchId"]
			@queueType = params["queueType"]
			@matchMode = params["matchMode"]


			/ Participant Stats / 
			@unrealKills = params["participants"][0]["stats"]["unrealKills"]
			@item0 = params["participants"][0]["stats"]["item0"]
			@item1 = params["participants"][0]["stats"]["item1"]
			@item2 = params["participants"][0]["stats"]["item2"]
			@item3 = params["participants"][0]["stats"]["item3"]			
			@item4 = params["participants"][0]["stats"]["item4"]
			@item5 = params["participants"][0]["stats"]["item5"]
			@item6 = params["participants"][0]["stats"]["item6"]
			@totalDamageTaken = params["participants"][0]["stats"]["totalDamageTaken"]
			@pentaKills = params["participants"][0]["stats"]["pentaKills"]
			@sightWardsBoughtInGame = params["participants"][0]["stats"]["sightWardsBoughtInGame"]
			@winner = params["participants"][0]["stats"]["winner"]
			@magicDamageDealt = params["participants"][0]["stats"]["magicDamageDealt"]
			@wardsKilled = params["participants"][0]["stats"]["wardsKilled"]
			@largestCriticalStrike = params["participants"][0]["stats"]["largestCriticalStrike"]
			@trueDamageDealt = params["participants"][0]["stats"]["trueDamageDealt"]
			@doubleKills = params["participants"][0]["stats"]["doubleKills"]
			@physicalDamageDealt = params["participants"][0]["stats"]["physicalDamageDealt"]
			@tripleKills = params["participants"][0]["stats"]["tripleKills"]
			@deaths = params["participants"][0]["stats"]["deaths"]
			@firstBloodAssist = params["participants"][0]["stats"]["firstBloodAssist"]
			@magicDamageDealtToChampions = params["participants"][0]["stats"]["magicDamageDealtToChampions"]
			@assists = params["participants"][0]["stats"]["assists"]
			@visionWardsBoughtInGame = params["participants"][0]["stats"]["visionWardsBoughtInGame"]
			@totalTimeCrowdControlDealt = params["participants"][0]["stats"]["totalTimeCrowdControlDealt"]
			@champLevel = params["participants"][0]["stats"]["champLevel"]
			@physicalDamageTaken = params["participants"][0]["stats"]["physicalDamageTaken"]
			@totalDamageDealt = params["participants"][0]["stats"]["totalDamageDealt"]
			@largestKillingSpree = params["participants"][0]["stats"]["largestKillingSpree"]
			@inhibitorKills = params["participants"][0]["stats"]["inhibitorKills"]
			@minionsKilled = params["participants"][0]["stats"]["minionsKilled"]
			@towerKills = params["participants"][0]["stats"]["towerKills"]
			@physicalDamageDealtToChampions = params["participants"][0]["stats"]["physicalDamageDealtToChampions"]
			@quadraKills = params["participants"][0]["stats"]["quadraKills"]
			@goldSpent = params["participants"][0]["stats"]["goldSpent"]
			@totalDamageDealtToChampions = params["participants"][0]["stats"]["totalDamageDealtToChampions"]

			@goldEarned = params["participants"][0]["stats"]["goldEarned"]
			@neutralMinionsKilledTeamJungle = params["participants"][0]["stats"]["neutralMinionsKilledTeamJungle"]
			@firstBloodKill = params["participants"][0]["stats"]["firstBloodKill"]
			@firstTowerKill = params["participants"][0]["stats"]["firstTowerKill"]
			@wardsPlaced = params["participants"][0]["stats"]["wardsPlaced"]
			@trueDamageDealtToChampions = params["participants"][0]["stats"]["trueDamageDealtToChampions"]
			@killingSprees = params["participants"][0]["stats"]["killingSprees"]
			@firstInhibitorKill = params["participants"][0]["stats"]["firstInhibitorKill"]
			@totalScoreRank = params["participants"][0]["stats"]["totalScoreRank"]
			@totalUnitsHealed = params["participants"][0]["stats"]["totalUnitsHealed"]
			@kills = params["participants"][0]["stats"]["kills"]
			@firstInhibitorAssist = params["participants"][0]["stats"]["firstInhibitorAssist"]
			@totalPlayerScore = params["participants"][0]["stats"]["totalPlayerScore"]
			@neutralMinionsKilledEnemyJungle = params["participants"][0]["stats"]["neutralMinionsKilledEnemyJungle"]
			@magicDamageTaken = params["participants"][0]["stats"]["magicDamageTaken"]
			@largestMultiKill = params["participants"][0]["stats"]["largestMultiKill"]
			@totalHeal = params["participants"][0]["stats"]["totalHeal"]
			@neutralMinionsKilledEnemyJungle = params["participants"][0]["stats"]["neutralMinionsKilledEnemyJungle"]	
			@objectivePlayerScore = params["participants"][0]["stats"]["objectivePlayerScore"]
			@firstTowerAssist = params["participants"][0]["stats"]["firstTowerAssist"]
			@trueDamageTaken = params["participants"][0]["stats"]["trueDamageTaken"]
			@combatPlayerScore = params["participants"][0]["stats"]["combatPlayerScore"]
			@neutralMinionsKilled = params["participants"][0]["stats"]["neutralMinionsKilled"]

			/ Stats in timeline /
			@role = params["participants"][0]["timeline"]["role"]
			@lane = params["participants"][0]["timeline"]["lane"]

			@xpDiffZeroToTen = params["participants"][0]["timeline"]["xpDiffPerMinDeltas"]["zeroToTen"]			
			@xpDiffTenToTwennty = params["participants"][0]["timeline"]["xpDiffPerMinDeltas"]["tenToTwenty"]			
			@xpDiffTwentyToThirty = params["participants"][0]["timeline"]["xpDiffPerMinDeltas"]["twentyToThirty"]

			@damageTakenDiffZeroToTen = params["participants"][0]["timeline"]["damageTakenDiffPerMinDeltas"]["zeroToTen"]			
			@damageTakenDiffTenToTwennty = params["participants"][0]["timeline"]["damageTakenDiffPerMinDeltas"]["tenToTwenty"]			
			@damageTakenDiffTwentyToThirty = params["participants"][0]["timeline"]["damageTakenDiffPerMinDeltas"]["twentyToThirty"]
			
			@xpPerMinZeroToTen = params["participants"][0]["timeline"]["xpPerMinDeltas"]["zeroToTen"]			
			@xpPerMinTenToTwennty = params["participants"][0]["timeline"]["xpPerMinDeltas"]["tenToTwenty"]			
			@xpPerMinTwentyToThirty = params["participants"][0]["timeline"]["xpPerMinDeltas"]["twentyToThirty"]
			
			@goldPerMinZeroToTen = params["participants"][0]["timeline"]["goldPerMinDeltas"]["zeroToTen"]			
			@goldPerMinTenToTwennty = params["participants"][0]["timeline"]["goldPerMinDeltas"]["tenToTwenty"]			
			@goldPerMinTwentyToThirty = params["participants"][0]["timeline"]["goldPerMinDeltas"]["twentyToThirty"]
			
			@creepsPerMinZeroToTen = params["participants"][0]["timeline"]["creepsPerMinDeltas"]["zeroToTen"]			
			@creepsPerMinTenToTwennty = params["participants"][0]["timeline"]["creepsPerMinDeltas"]["tenToTwenty"]			
			@creepsPerMinTwentyToThirty = params["participants"][0]["timeline"]["creepsPerMinDeltas"]["twentyToThirty"]

			@csDiffZeroToTen = params["participants"][0]["timeline"]["csDiffPerMinDeltas"]["zeroToTen"]			
			@csDiffTenToTwennty = params["participants"][0]["timeline"]["csDiffPerMinDeltas"]["tenToTwenty"]			
			@csDiffTwentyToThirty = params["participants"][0]["timeline"]["csDiffPerMinDeltas"]["twentyToThirty"]

			@damageTakenPerMinZeroToTen = params["participants"][0]["timeline"]["damageTakenPerMinDeltas"]["zeroToTen"]			
			@damageTakenPerMinTenToTwennty = params["participants"][0]["timeline"]["damageTakenPerMinDeltas"]["tenToTwenty"]			
			@damageTakenPerMinTwentyToThirty = params["participants"][0]["timeline"]["damageTakenPerMinDeltas"]["twentyToThirty"]

			/ Runes /			
			@runes = Array.new
			if params["participants"][0]["runes"] != nil
				params["participants"][0]["runes"].each do |r|
					@runes << r['runeId']
				end
			end

			/ Masteries /
			@masteries = Array.new
			if params["participants"][0]["masteries"] != nil
				params["participants"][0]["masteries"].each do |m|
					@masteries << m['masteryId']
				end
			end
			
			@profileIcon = params["participantIdentities"][0]["player"]["profileIcon"]
			@matchHistoryUri = params["participantIdentities"][0]["player"]["matchHistoryUri"]
			@summonerName = params["participantIdentities"][0]["player"]["summonerName"]
			@summonerId = params["participantIdentities"][0]["player"]["summonerId"]
		end
	end	
end