class Confession < ActiveRecord::Base
  validates :description, presence: true
  validates :transgression, presence: true
  validates :occurred_at, presence: true

  belongs_to :transgression
  delegate :sinner, to: :transgression
end
