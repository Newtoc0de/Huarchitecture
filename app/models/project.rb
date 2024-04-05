class Project < ApplicationRecord
  CATEGORY = ["commande publique", "rénovation", "bâtiment basse consommation", "maison neuve", "chalet"]
  # relations
  has_many_attached :photos
end
