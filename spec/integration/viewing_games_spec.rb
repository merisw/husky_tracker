require 'spec_helper'

feature "Viewing games" do
  scenario "Listing all games" do
    game = Factory.create(:game, :date => 'Sept 10')
    visit '/'
    click_link 'Sept 10'
    page.current_url.should == game_url(game)
  end
end
