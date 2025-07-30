class Match < ApplicationRecord
  belongs_to :player_a, class_name: "Player"
  belongs_to :player_b, class_name: "Player"
  belongs_to :winner,   class_name: "Player"

  validates :round, presence: true, inclusion: { in: %w[1 2 3] }
end
