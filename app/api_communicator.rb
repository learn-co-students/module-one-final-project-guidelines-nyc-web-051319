require 'rest-client'
require 'json'
require 'pry'

# URL = ("http://www.dnd5eapi.co/monsters/")
def get_monster_info
    monster_string = RestClient.get('http://www.dnd5eapi.co/api/monsters/')
    monster_hash = JSON.parse(monster_string)
    monster_info = monster_hash["results"]
    monster_info
end

def get_monster_stats
  monsters = get_monster_info.map do |monster|
    JSON.parse(RestClient.get(monster["url"]))
  end
  monsters
end



get_monster_stats
