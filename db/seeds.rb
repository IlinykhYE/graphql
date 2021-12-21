# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Resort.delete_all
Resort.reset_sequence_name
Resort.create([
                {name:"Holiday Club Katinkulta","email":"therest@gmail.com",
                 "description":"The most versatile holiday resort in the Nordic Countries – is located in the Kainuu region in North Eastern Finland, Vuokatti"},
{name:"Holiday Club Katinkulta","email":"therest@gmail.com",
  "description":"The most versatile holiday resort in the Nordic Countries – is located in the Kainuu region in North Eastern Finland, Vuokatti"},
                {name:"Holiday Club Katinkulta","email":"therest@gmail.com",
                 "description":"The most versatile holiday resort in the Nordic Countries – is located in the Kainuu region in North Eastern Finland, Vuokatti"}

               ])
Apartment.delete_all
Apartment.reset_sequence_name
Apartment.create([
                {room_type:'Single',  description: 'Single description', resort_id: 1},
                {room_type:'Family',  description: 'Family description', resort_id: 2},
                {room_type:'Vip',  description: 'Vip description', resort_id: 3}
              ])