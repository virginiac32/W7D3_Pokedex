# json.partial! :name, :location, party: @party
# json.set @party.name do
#
# end

json.name @party.name
json.guests do
  json.array! @party.guests do |guest|
    json.gifts do
      json.array! guest.gifts, :title, :description
    end
    json.name guest.name
    json.age guest.age
    json.favorite_color guest.favorite_color
  end
end
