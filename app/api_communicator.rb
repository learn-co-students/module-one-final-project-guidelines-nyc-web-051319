require 'rest-client'
require 'json'
require 'pry'


# URL = ("http://www.dnd5eapi.co/api/monsters/")

# Gets to the API level info for each monster
# def get_monster_info
#     monster_string = RestClient.get(URL)
#     monster_hash = JSON.parse(monster_string)
#     monster_info = monster_hash["results"]
#     monsters_stats = monster_info.map do |monster|
#         JSON.parse(RestClient.get(monster["url"]))
#     end
#     monsters_stats
# end

# def choose_monster_by_id(num)
#     get_monster_info[num]
# end

# def get_monster_name_by_id(num)
#     get_monster_info[num]["name"]
# end

# def get_monster_type_by_id(num)
#     get_monster_info[num]["type"]
# end

# def get_monster_hp_by_id(num)
#     get_monster_info[num]["hit_points"]
# end

# def get_monster_str_by_id(num)
#     get_monster_info[num]["strength"]
# end
# def generate_random_monster
#     choose_monster_by_id(rand(0..326))
#     Monster.create(name= API NAM)
# end
# def generate_monster(num)
#     name = get_monster_name_by_id(num)
#     type =get_monster_type_by_id(num)
#     hp = get_monster_hp_by_id(num)
#     str = get_monster_str_by_id(num)

# end

# puts generate_monster(37)

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
<<<<<<< HEAD:lib/api_communicator.rb
=======



get_monster_stats
>>>>>>> aaron:app/api_communicator.rb
