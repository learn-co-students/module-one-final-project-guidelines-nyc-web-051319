require 'rest-client'
require 'json'
require 'pry'

# URL = ("http://www.dnd5eapi.co/monsters/")
def get_monster_hash
    monster_string = RestClient.get('http://www.dnd5eapi.co/api/monsters/')
    monster_hash = JSON.parse(monster_string)
    monster_info = monster_hash["results"]

    monster_hash["results"].each do |monster|
         
    end
end

get_monster_hash