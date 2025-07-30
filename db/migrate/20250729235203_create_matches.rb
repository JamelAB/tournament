class CreateMatches < ActiveRecord::Migration[8.0]
  def change
    create_table :matches do |t|
      t.references :player_a, null: false, foreign_key: { to_table: :players }
      t.references :player_b, null: false, foreign_key: { to_table: :players }
      t.string :round, null: false

      t.timestamps
    end
  end
end
