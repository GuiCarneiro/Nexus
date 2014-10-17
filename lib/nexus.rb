require "httparty"

#Basic Connection#
require_relative 'nexus/connection'

#Controllers#
require_relative 'nexus/controller/summoner'
require_relative 'nexus/controller/static'
require_relative 'nexus/controller/status'
require_relative 'nexus/controller/game'
require_relative 'nexus/controller/champion'
require_relative 'nexus/controller/match'
require_relative 'nexus/controller/stats'

#Models#
require_relative 'nexus/model/summoner'
require_relative 'nexus/model/champion'
require_relative 'nexus/model/masteries'
require_relative 'nexus/model/items'
require_relative 'nexus/model/runes'
require_relative 'nexus/model/game'
require_relative 'nexus/model/match'
require_relative 'nexus/model/stats'

