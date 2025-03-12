class ChangeConferencesColumnToConference < ActiveRecord::Migration[7.1]
  def change
    rename_column :nbaplayers, :conferences, :conference
  end
end
