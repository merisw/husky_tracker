class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :date
      t.string :location
      t.string :opponent
      t.string :time
      t.string :tv
      t.string :outcome

      t.timestamps
    end
  end
end
