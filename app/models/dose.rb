class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail
  validates :cocktail, presence: true
  validates :description, presence: true, allow_blank: false
  validates :ingredient, presence: true, uniqueness: { scope: :cocktail }, allow_blank: false

end
