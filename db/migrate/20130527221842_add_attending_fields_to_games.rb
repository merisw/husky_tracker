class AddAttendingFieldsToGames < ActiveRecord::Migration
  def change
    add_column :games, :attending, :string
    add_column :games, :tailgate, :string
  end
end
