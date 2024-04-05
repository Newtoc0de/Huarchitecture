# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "open-uri"

Project.destroy_all
User.destroy_all


puts "Creating Projects"
category = ["commande publique", "rénovation", "bâtiment basse consommation", "maison neuve", "chalet"]
project1 = Project.new(name: "Retraite au bord de l'eau", description: "Parfait pour découvrir les plaisirs de la vie en bord de mer, pour quelques jours, ou plus !", category: category.sample)
file = URI.open("https://ekladata.com/uxSjQJ3my2iglxFlPPaHZNZj45k.jpg")
project1.photos.attach([
                      { io: file, filename: "phare.jpg", content_type: "image/jpg" }
                    ])
project1.save!
project2 = Project.new(name: "Appartement cosy à Paris", description: "Appartement cosy et lumineux, idéalement situé en plein coeur de Paris.", category: category.sample)
file = URI.open("https://www.sothebysrealty-france.com/datas/biens/images/23063/23063_00-2023-05-18-0036.jpg")
project2.photos.attach([
                      { io: file, filename: "paris.jpg", content_type: "image/jpg" }
                    ])
project3 = Project.new(name: "Villa de luxe à Saint-Tropez", description: "Villa de luxe avec piscine et vue sur la mer, à deux pas de la plage de Pampelonne.", category: category.sample)
file = URI.open("https://images.squarespace-cdn.com/content/v1/6001ce695a503d6d70ef3775/923de041-01a2-4c2b-ad6a-a01e209c2700/Homanie+Saint+Tropez+Capon+-+Vue+a%C3%A9rienne+2.jpg")
project3.photos.attach([
                      { io: file, filename: "saint-tropez.jpg", content_type: "image/jpg" }
                    ])
project4 = Project.new(name: "Chalet à la montagne", description: "Chalet en bois avec vue sur les montagnes, idéal pour un séjour au ski en famille.", category: category.sample)
file = URI.open("https://cdn.lecollectionist.com/__lecollectionist__/production/houses/2780/photos/7KEks5DUS5iXEycNC6iH_155db003-29b6-45ec-c460-5e88db776395.jpg?width=2880&q=65")
project4.photos.attach([
                      { io: file, filename: "megeve.jpg", content_type: "image/jpg" }
                    ])
project5 = Project.new(name: "Maison de campagne en Provence", description: "Maison de campagne en pierre, avec piscine et jardin, au coeur de la Provence.", category: category.sample)
file = URI.open("https://www.slow-provence.com/uploads/thumbnails/image/bedoin-mont-ventoux-mas-provencal-de-charme-authentique-pierre-jpg_2000x0.jpg")
project5.photos.attach([
                      { io: file, filename: "provence.jpg", content_type: "image/jpg" }
                    ])
project6 = Project.new(name: "Loft à New York", description: "Loft spacieux et moderne, situé dans le quartier branché de Brooklyn.", category: category.sample)
file = URI.open("https://www.notreloft.com/images/2016/10/loft-Manhattan-New-York-00100.jpg")
project6.photos.attach([
                      { io: file, filename: "new-york.jpg", content_type: "image/jpg" }
                    ])
project7 = Project.new(name: "Maison de plage à Biarritz", description: "Maison de plage avec vue sur l'océan, à deux pas du centre-ville de Biarritz.", category: category.sample)
file = URI.open("https://www.cestenfrance.fr/wp-content/uploads/2015/11/64VillaBelza03.jpg")
project7.photos.attach([
                      { io: file, filename: "biarritz.jpg", content_type: "image/jpg" }
                    ])

project8 = Project.new(name: "Maison de campagne en Toscane", description: "Maison de campagne en pierre, avec piscine et jardin, au coeur de la Toscane.", category: category.sample)
file = URI.open("https://www.emilegarcin.com/upload/images/643d2212da8ac7.10141079_13219372a.jpg")
project8.photos.attach([
                      { io: file, filename: "provence.jpg", content_type: "image/jpg" }
                    ])

project9 = Project.new(name: "Longère bourguignonne", description:"Ferme basse au coeur des vignobles bourguignons avec piscine et salle de sport", category: category.sample)
file = URI.open("https://www.bresse-bourguignonne.com/medias/images/prestations/1916.jpg")
project9.photos.attach([
                      { io: file, filename: "bourgogne.jpg", content_type: "image/jpg" }
                    ])

project10 = Project.new(name: "Maison de ville à Londres", description: "Maison de ville typique anglaise, située dans le quartier de Notting Hill.", category: category.sample)
file = URI.open("https://media.admagazine.fr/photos/628e3259ebe233e6a03a9834/16:9/w_2560%2Cc_limit/%25C2%25A9%2520Simon%2520Watson_Erdem%2520Joseph_0127%2520rd.jpg")
project10.photos.attach([
                      { io: file, filename: "londres.jpg", content_type: "image/jpg" }
                     ])
puts "Sauvegarde les Projects"

project2.save
project3.save
project4.save
project5.save
project6.save
project7.save
project8.save
project9.save
project10.save
puts "tous les Projects sont ok"
