class AddFinalsColumns < ActiveRecord::Migration[7.1]
  def change
    add_column :nbaplayers, :finals_appearances, :integer 
    add_column :nbaplayers, :finals_won, :integer
    add_column :nbaplayers, :finals_lost, :integer 
    add_column :nbaplayers, :finals_mvps, :integer
    add_column :nbaplayers, :finals_pts_avg, :float
  end
end
