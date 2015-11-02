class Transgression < ActiveRecord::Base
  SIN_TYPES = [
    'Gluttony', 'Greed', 'Anger', 'Pride',
    'Lust', 'Sloth', 'Envy'
  ]

  validates :description, presence: true
  validates :sinner, presence: true
  validates :sin_type, inclusion: { in: SIN_TYPES }

  # belongs_to :sinner, it would assume there is a Sinner Class, as well as a sinner_id column in this table

  belongs_to :sinner, class_name: "User", foreign_key: :user_id

  has_many :confessions, dependent: :destroy
end

# Transgression::SIN_TYPES
