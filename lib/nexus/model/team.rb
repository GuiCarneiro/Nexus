module Nexus	
	class Team

		/ General / 
		attr_reader :createDate, :fullId, :lastGameDate, :lastJoinDate, :lastJoinedRankedTeamQueueDate, :modifyDate, :name, :secondLastJoinDate
		attr_reader :status, :tag, :thirdLastJoinDate, :owner

		/ Match /
		attr_reader :teamMatches

		/ Team Stats /
		attr_reader :teamStatDetails, :memberList


		def initialize(params)		
			@createDate = params["createDate"]		
			@fullId = params["fullId"]		
			@lastGameDate = params["lastGameDate"]		
			@lastJoinDate = params["lastJoinDate"]		
			@lastJoinedRankedTeamQueueDate = params["lastJoinedRankedTeamQueueDate"]		
			@modifyDate = params["modifyDate"]		
			@name = params["name"]		
			@secondLastJoinDate = params["secondLastJoinDate"]		
			@status = params["status"]		
			@tag = params["tag"]		
			@thirdLastJoinDate = params["thirdLastJoinDate"]

			@teamMatches = Array.new
			params["matchHistory"].each do |m|
				@teamMatches << OpenStruct.new(m)
			end

			@teamStatDetails = Array.new
			params["teamStatDetails"].each do |t|
				@teamStatDetails << OpenStruct.new(t)
			end

			@owner = params["roster"]["ownerId"]

			@memberList = Array.new
			params["roster"]["memberList"].each do |r|
				@memberList << OpenStruct.new(r) 
			end
		end
	end
end