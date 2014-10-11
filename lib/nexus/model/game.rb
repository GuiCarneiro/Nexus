module Nexus	
	class Game
		attr_reader :championId, :gameId, :gameMode, :gameType, :invalid, :ipEarned, :level, :mapId, :spell1, :spell2, :subType, :teamId, :gameStatus

		def initialize(params)		
			@championId = params["championId"]					
			@gameId = params["gameId"]	
			@gameMode = params["gameMode"]		
			@gameType = params["gameType"]		
			@invalid = params["invalid"]		
			@ipEarned = params["ipEarned"]		
			@level = params["level"]		
			@mapId = params["mapId"]		
			@spell1 = params["spell1"]		
			@spell2 = params["spell2"]		
			@subType = params["subType"]		
			@teamId = params["teamId"]
			@player = []
			@gameStatus = Nexus::GameStatus.new(params["stats"])

			params["fellowPlayers"].each do |fellow|
				@player.push(Nexus::Player.new(fellow));
			end
		end
	end

	class Player
		attr_reader :championId, :summonerId, :teamId

		def initialize(params)		
			@championId = params["championId"]
			@summonerId = params["summonerId"]
			@teamId = params["teamId"]			
		end
	end

	class GameStatus
		attr_reader :assists, :barracksKilled, :championsKilled, :combatPlayerScore, :consumablesPurchased, :damageDealtPlayer, :doubleKills, :firstBlood, :gold
		attr_reader :goldEarned , :goldSpent, :item0, :item1 ,:item2 ,:item3 ,:item4 ,:item5, :item6, :itemsPurchased, :killingSprees, :largestCriticalStrike, :largestKillingSpree
		attr_reader :largestMultiKill, :legendaryItemsCreated, :level, :magicDamageDealtPlayer, :magicDamageDealtToChampions, :magicDamageTaken, :minionsDenied, :minionsKilled, :neutralMinionsKilled
		attr_reader :neutralMinionsKilledEnemyJungle, :neutralMinionsKilledYourJungle, :nexusKilled, :nodeCapture, :nodeCaptureAssist, :nodeNeutralize, :nodeNeutralizeAssist, :numDeaths, :numItemsBought
		attr_reader :objectivePlayerScore, :pentaKills, :physicalDamageDealtPlayer, :physicalDamageDealtToChampions, :physicalDamageTaken, :quadraKills, :sightWardsBought, :spell1Cast, :spell2Cast, :spell3Cast, :spell4Cast
		attr_reader :summonSpell1Cast, :summonSpell2Cast, :superMonsterKilled, :team, :teamObjective, :timePlayed, :totalDamageDealt, :totalDamageDealtToChampions, :totalDamageTaken, :totalHeal, :totalPlayerScore
		attr_reader :totalScoreRank, :totalTimeCrowdControlDealt, :totalUnitsHealed, :tripleKills, :trueDamageDealtPlayer, :trueDamageDealtToChampions, :trueDamageTaken, :turretsKilled
		attr_reader :unrealKills, :victoryPointTotal, :visionWardsBought, :wardKilled, :wardPlaced, :win 

		def initialize(params)		
			@assists = params["assists"]		
			@barracksKilled = params["barracksKilled"]		
			@championsKilled = params["championsKilled"]		
			@combatPlayerScore = params["combatPlayerScore"]		
			@consumablesPurchased = params["consumablesPurchased"]			
			@damageDealtPlayer = params["damageDealtPlayer"]			
			@doubleKills = params["doubleKills"]			
			@firstBlood = params["firstBlood"]			
			@gold = params["gold"]			
			@goldEarned = params["goldEarned"]			
			@goldSpent = params["goldSpent"]			
			@item0 = params["item0"]			
			@item1 = params["item1"]			
			@item2 = params["item2"]		
			@item3 = params["item3"]		
			@item4 = params["item4"]		
			@item5 = params["item5"]		
			@item6 = params["item6"]		
			@itemsPurchased = params["itemsPurchased"]			
			@killingSprees = params["killingSprees"]			
			@largestCriticalStrike = params["largestCriticalStrike"]			
			@largestKillingSpree = params["largestKillingSpree"]			
			@largestMultiKill = params["largestMultiKill"]			
			@legendaryItemsCreated = params["legendaryItemsCreated"]			
			@level = params["level"]			
			@magicDamageDealtPlayer = params["magicDamageDealtPlayer"]			
			@magicDamageDealtToChampions = params["magicDamageDealtToChampions"]			
			@magicDamageTaken = params["magicDamageTaken"]			
			@minionsDenied = params["minionsDenied"]			
			@minionsKilled = params["minionsKilled"]			
			@neutralMinionsKilled = params["neutralMinionsKilled"]			
			@neutralMinionsKilledEnemyJungle = params["neutralMinionsKilledEnemyJungle"]			
			@neutralMinionsKilledYourJungle = params["neutralMinionsKilledYourJungle"]			
			@nexusKilled = params["nexusKilled"]			
			@nodeCapture = params["nodeCapture"]			
			@nodeCaptureAssist = params["nodeCaptureAssist"]
			@nodeNeutralize = params["nodeNeutralize"]
			@nodeNeutralizeAssist = params["nodeNeutralizeAssist"]	
			@numDeaths = params["numDeaths"]	
			@numItemsBought = params["numItemsBought"]	
			@objectivePlayerScore = params["objectivePlayerScore"]	
			@numItemsBought = params["numItemsBought"]	
			@pentaKills = params["pentaKills"]	
			@physicalDamageDealtPlayer = params["physicalDamageDealtPlayer"]	
			@physicalDamageDealtToChampions = params["physicalDamageDealtToChampions"]	
			@physicalDamageTaken = params["physicalDamageTaken"]	
			@quadraKills = params["quadraKills"]	
			@sightWardsBought = params["sightWardsBought"]	
			@spell1Cast = params["spell1Cast"]	
			@spell2Cast = params["spell2Cast"]	
			@spell3Cast = params["spell3Cast"]	
			@spell4Cast = params["spell4Cast"]	
			@summonSpell1Cast = params["summonSpell1Cast"]	
			@summonSpell2Cast = params["summonSpell2Cast"]	
			@superMonsterKilled = params["superMonsterKilled"]	
			@team = params["team"]	
			@teamObjective = params["teamObjective"]	
			@timePlayed = params["timePlayed"]	
			@totalDamageDealt = params["totalDamageDealt"]	
			@totalDamageDealtToChampions = params["totalDamageDealtToChampions"]	
			@totalDamageTaken = params["totalDamageTaken"]	
			@totalHeal = params["totalHeal"]	
			@totalPlayerScore = params["totalPlayerScore"]	
			@totalScoreRank = params["totalScoreRank"]	
			@totalTimeCrowdControlDealt = params["totalTimeCrowdControlDealt"]	
			@tripleKills = params["tripleKills"]	
			@trueDamageDealtPlayer = params["trueDamageDealtPlayer"]	
			@trueDamageDealtToChampions = params["trueDamageDealtToChampions"]	
			@trueDamageTaken = params["trueDamageTaken"]	
			@turretsKilled = params["turretsKilled"]	
			@unrealKills = params["unrealKills"]	
			@victoryPointTotal = params["victoryPointTotal"]	
			@visionWardsBought = params["visionWardsBought"]	
			@wardKilled = params["wardKilled"]	
			@wardPlaced = params["wardPlaced"]	
			@win = params["win"]
		end
	end
end