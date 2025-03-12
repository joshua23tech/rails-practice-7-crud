class CreateNbaplayers < ActiveRecord::Migration[7.1]
  def change
    create_table :nbaplayers do |t|
      t.string :name
      t.string :position
      t.string :team
      t.string :conferences

      t.timestamps
    end
  end
end
