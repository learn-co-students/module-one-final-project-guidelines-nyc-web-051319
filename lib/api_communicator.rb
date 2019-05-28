require 'rest-client'
require 'json'
require 'pry'

URL = ("http://www.dnd5eapi.co/api/monsters/")

# Gets to the API level info for each monster 
def get_monster_info
    monster_string = RestClient.get(URL)
    monster_hash = JSON.parse(monster_string)
    monster_info = monster_hash["results"]
    monsters = monster_info.map do |monster|
        JSON.parse(RestClient.get(monster["url"]))
        # binding.pry
    end
    # binding.pry
    monsters
end


puts get_monster_info

# def choose_monster_by_id(num)
#     get_monster_info[num]
# end

# puts choose_monster_by_id(37)