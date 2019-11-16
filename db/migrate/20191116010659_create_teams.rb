class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :player_one
      t.string :player_two
      t.integer :wins
      t.float :win_percentage

      t.timestamps
    end
  end
end
