class Transgression < ActiveRecord::Base
  SIN_TYPES = [
    'Gluttony', 'Greed', 'Anger', 'Pride',
    'Lust', 'Sloth', 'Envy'
  ]

  validates :description, presence: true
  validates :user, presence: true
  validates :sin_type, inclusion: { in: SIN_TYPES }

  belongs_to :user
end

# Transgression::SIN_TYPES
