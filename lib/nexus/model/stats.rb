module Nexus	
	class ChampStats
		attr_reader :totalDeathsPerSession, :totalSessionsPlayed, :totalDamageTaken, :totalQuadraKills, :totalTripleKills, :totalMinionKills
        attr_reader :maxChampionsKilled, :totalDoubleKills, :totalPhysicalDamageDealt, :totalChampionKills, :totalAssists, :mostChampionKillsPerSession
        attr_reader :totalDamageDealt, :totalFirstBlood, :totalSessionsLost, :totalSessionsWon, :totalMagicDamageDealt, :totalGoldEarned
        attr_reader :totalPentaKills, :totalTurretsKilled, :mostSpellsCast, :maxNumDeaths, :totalUnrealKills


		def initialize(params)		
			@totalDeathsPerSession = params["totalDeathsPerSession"]
			@totalSessionsPlayed = params["totalSessionsPlayed"]
			@totalDamageTaken = params["totalDamageTaken"]
			@totalQuadraKills = params["totalQuadraKills"]
			@totalTripleKills = params["totalTripleKills"]
			@totalMinionKills = params["totalMinionKills"]
			@maxChampionsKilled = params["maxChampionsKilled"]
			@totalDoubleKills = params["totalDoubleKills"]
			@totalPhysicalDamageDealt = params["totalPhysicalDamageDealt"]
			@totalChampionKills = params["totalChampionKills"]
			@totalAssists = params["totalAssists"]
			@mostChampionKillsPerSession = params["mostChampionKillsPerSession"]
			@totalDamageDealt = params["totalDamageDealt"]
			@totalFirstBlood = params["totalFirstBlood"]
			@totalSessionsLost = params["totalSessionsLost"]
			@totalSessionsWon = params["totalSessionsWon"]
			@totalMagicDamageDealt = params["totalMagicDamageDealt"]
			@totalGoldEarned = params["totalGoldEarned"]
			@totalPentaKills = params["totalPentaKills"]
			@totalTurretsKilled = params["totalTurretsKilled"]
			@mostSpellsCast = params["mostSpellsCast"]
			@maxNumDeaths = params["maxNumDeaths"]
			@totalUnrealKills = params["totalUnrealKills"]
		end
	end

	class MapStats
		attr_reader :averageAssists, :playerStatSummaryType, :losses, :wins, :averageChampionsKilled, :averageCombatPlayerScore, :averageNumDeaths
        attr_reader :averageNodeCapture, :averageNodeCaptureAssist, :averageNodeNeutralize, :averageNodeNeutralizeAssist
        attr_reader :averageObjectivePlayerScore, :averageTeamObjective, :averageTotalPlayerScore, :botGamesPlayed, :killingSpree
        attr_reader :maxAssists, :maxChampionsKilled, :maxCombatPlayerScore, :maxLargestCriticalStrike, :maxLargestKillingSpree
        attr_reader :maxNodeCapture, :maxNodeCaptureAssist, :maxNodeNeutralize, :maxNodeNeutralizeAssist, :maxNumDeaths, :maxObjectivePlayerScore
        attr_reader :maxTeamObjective, :maxTimePlayed, :maxTimeSpentLiving, :maxTotalPlayerScore, :mostChampionKillsPerSession, :mostSpellsCast
        attr_reader :normalGamesPlayed, :rankedPremadeGamesPlayed, :rankedSoloGamesPlayed, :totalAssists, :totalChampionKills, :totalDamageDealt
        attr_reader :totalDamageTaken, :totalDeathsPerSession, :totalDoubleKills, :totalFirstBlood, :totalGoldEarned, :totalHeal, :totalMagicDamageDealt
		attr_reader :totalMinionKills, :totalNeutralMinionsKilled, :totalNodeCapture, :totalNodeNeutralize, :totalPentaKills, :totalPhysicalDamageDealt
		attr_reader :totalQuadraKills, :totalSessionsLost, :totalSessionsPlayed, :totalSessionsWon, :totalTripleKills, :totalTurretsKilled, :totalUnrealKills

		def initialize(params)
			@wins = params["wins"]
			@losses = params["losses"]
			@playerStatSummaryType = params["playerStatSummaryType"]		
			@averageAssists = params["aggregatedStats"]["averageAssists"]
			@averageChampionsKilled = params["aggregatedStats"]["averageChampionsKilled"]
			@averageCombatPlayerScore = params["aggregatedStats"]["averageCombatPlayerScore"]
			@averageNodeCapture = params["aggregatedStats"]["averageNodeCapture"]
			@averageNodeCaptureAssist = params["aggregatedStats"]["averageNodeCaptureAssist"]
			@averageNodeNeutralize = params["aggregatedStats"]["averageNodeNeutralize"]
			@averageNodeNeutralizeAssist = params["aggregatedStats"]["averageNodeNeutralizeAssist"]
			@averageNumDeaths = params["aggregatedStats"]["averageNumDeaths"]
			@averageObjectivePlayerScore = params["aggregatedStats"]["averageObjectivePlayerScore"]
			@averageTeamObjective = params["aggregatedStats"]["averageTeamObjective"]
			@averageTotalPlayerScore = params["aggregatedStats"]["averageTotalPlayerScore"]
			@botGamesPlayed = params["aggregatedStats"]["botGamesPlayed"]
			@killingSpree = params["aggregatedStats"]["killingSpree"]
			@maxAssists = params["aggregatedStats"]["maxAssists"]
			@maxChampionsKilled = params["aggregatedStats"]["maxChampionsKilled"]
			@maxCombatPlayerScore = params["aggregatedStats"]["maxCombatPlayerScore"]
			@maxLargestCriticalStrike = params["aggregatedStats"]["maxLargestCriticalStrike"]
			@maxLargestKillingSpree = params["aggregatedStats"]["maxLargestKillingSpree"]
			@maxNodeCapture = params["aggregatedStats"]["maxNodeCapture"]
			@maxNodeCaptureAssist = params["aggregatedStats"]["maxNodeCaptureAssist"]
			@maxNodeNeutralize = params["aggregatedStats"]["maxNodeNeutralize"]
			@maxNodeNeutralizeAssist = params["aggregatedStats"]["maxNodeNeutralizeAssist"]
			@maxNumDeaths = params["aggregatedStats"]["maxNumDeaths"]
			@maxObjectivePlayerScore = params["aggregatedStats"]["maxObjectivePlayerScore"]
			@maxTeamObjective = params["aggregatedStats"]["maxTeamObjective"]
			@maxTimePlayed = params["aggregatedStats"]["maxTimePlayed"]
			@maxTimeSpentLiving = params["aggregatedStats"]["maxTimeSpentLiving"]
			@maxTotalPlayerScore = params["aggregatedStats"]["maxTotalPlayerScore"]
			@mostChampionKillsPerSession = params["aggregatedStats"]["mostChampionKillsPerSession"]
			@mostSpellsCast = params["aggregatedStats"]["mostSpellsCast"]
			@normalGamesPlayed = params["aggregatedStats"]["normalGamesPlayed"]
			@rankedPremadeGamesPlayed = params["aggregatedStats"]["rankedPremadeGamesPlayed"]
			@rankedSoloGamesPlayed = params["aggregatedStats"]["rankedSoloGamesPlayed"]
			@totalAssists = params["aggregatedStats"]["totalAssists"]
			@totalChampionKills = params["aggregatedStats"]["totalChampionKills"]
			@totalDamageDealt = params["aggregatedStats"]["totalDamageDealt"]
			@totalDamageTaken = params["aggregatedStats"]["totalDamageTaken"]
			@totalDeathsPerSession = params["aggregatedStats"]["totalDeathsPerSession"]
			@totalDoubleKills = params["aggregatedStats"]["totalDoubleKills"]
			@totalFirstBlood = params["aggregatedStats"]["totalFirstBlood"]
			@totalGoldEarned = params["aggregatedStats"]["totalGoldEarned"]
			@totalHeal = params["aggregatedStats"]["totalHeal"]
			@totalMagicDamageDealt = params["aggregatedStats"]["totalMagicDamageDealt"]
			@totalMinionKills = params["aggregatedStats"]["totalMinionKills"]
			@totalNeutralMinionsKilled = params["aggregatedStats"]["totalNeutralMinionsKilled"]
			@totalNodeCapture = params["aggregatedStats"]["totalNodeCapture"]
			@totalNodeNeutralize = params["aggregatedStats"]["totalNodeNeutralize"]
			@totalPentaKills = params["aggregatedStats"]["totalPentaKills"]
			@totalPhysicalDamageDealt = params["aggregatedStats"]["totalPhysicalDamageDealt"]
			@totalQuadraKills = params["aggregatedStats"]["totalQuadraKills"]
			@totalSessionsLost = params["aggregatedStats"]["totalSessionsLost"]
			@totalSessionsPlayed = params["aggregatedStats"]["totalSessionsPlayed"]
			@totalSessionsWon = params["aggregatedStats"]["totalSessionsWon"]
			@totalTripleKills = params["aggregatedStats"]["totalTripleKills"]
			@totalTurretsKilled = params["aggregatedStats"]["totalTurretsKilled"]
			@totalUnrealKills = params["aggregatedStats"]["totalUnrealKills"]
		end
	end
end

