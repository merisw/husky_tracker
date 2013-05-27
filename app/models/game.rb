class Game < ActiveRecord::Base
  attr_accessible :date, :location, :opponent, :outcome, :time, :tv
end
