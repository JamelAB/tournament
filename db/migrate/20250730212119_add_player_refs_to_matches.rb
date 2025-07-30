class AddPlayerRefsToMatches < ActiveRecord::Migration[8.0]
  def change
    add_reference :matches, :player_a, null: false, foreign_key: { to_table: :players }
    add_reference :matches, :player_b, null: false, foreign_key: { to_table: :players }
    add_reference :matches, :winner, null: false, foreign_key: { to_table: :players }
  end
end
