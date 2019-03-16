class RecipeIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient

  validates :quantity, presence: true
  validates :unit,
            presence: true,
            inclusion: { in: %w(mg g kg l EL TL Msp Bund Packung) }

end
