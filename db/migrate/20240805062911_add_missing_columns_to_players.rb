class AddMissingColumnsToPlayers < ActiveRecord::Migration[6.1]
  def change
    # add_column :players, :fielding_errors, :integer
    add_column :players, :walks, :integer unless column_exists?(:players, :walks)
    add_column :players, :struck_out, :integer unless column_exists?(:players, :struck_out)
    add_column :players, :hit_by_pitch, :integer unless column_exists?(:players, :hit_by_pitch)
  end
end
