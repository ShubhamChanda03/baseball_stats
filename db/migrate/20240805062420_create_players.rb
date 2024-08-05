class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :surname
      t.string :given_name
      t.string :position
      t.integer :games
      t.integer :games_started
      t.integer :at_bats
      t.integer :runs
      t.integer :hits
      t.integer :doubles
      t.integer :triples
      t.integer :home_runs
      t.integer :rbi
      t.integer :steals
      t.integer :caught_stealing
      t.integer :sacrifice_hits
      t.integer :sacrifice_flies
      t.integer :fielding_errors
      t.integer :pb
      t.integer :walks
      t.integer :struck_out
      t.integer :hit_by_pitch
      t.decimal :avg, precision: 5, scale: 3
      t.decimal :ops, precision: 5, scale: 3
      t.timestamps
    end
  end
end
