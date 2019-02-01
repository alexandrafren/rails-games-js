class CreateConsoleGames < ActiveRecord::Migration[5.2]
  def change
    create_table :console_games do |t|
      t.integer :console_id
      t.integer :game_id

      t.timestamps
    end
  end
end
