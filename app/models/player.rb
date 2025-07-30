class Player < ApplicationRecord
  has_many :home_matches, class_name: "Match", foreign_key: :player_a_id, dependent: :destroy
  has_many :away_matches, class_name: "Match", foreign_key: :player_b_id, dependent: :destroy

  validates :name,  presence: true, length: { maximum: 50 }
  validates :club,  presence: true
end
