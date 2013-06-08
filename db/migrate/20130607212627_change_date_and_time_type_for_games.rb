class ChangeDateAndTimeTypeForGames < ActiveRecord::Migration
  def change
    change_table :games do |t|
      t.change :date, :date
      t.change :time, :time
    end
  end

end
