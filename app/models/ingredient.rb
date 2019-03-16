class Ingredient < ApplicationRecord
  validates :name, presence: true
  validates :default_unit,
            inclusion: { in: %w(mg g kg l EL TL Msp Bund Packung) },
            allow_nil: true
end
