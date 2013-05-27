require 'spec_helper'

feature "Viewing games" do
  before do
    game = Factory.create(:game, date: 'Sept 10')
    game2 = Factory.create(:game, date: 'Sept 17')
    visit '/'
  end

  scenario "Listing all games" do
    page.should have_content("Sept 10")
    page.should have_content("Sept 17")
  end

  scenario "View single game" do
    click_link 'Sept 10'
    page.should have_content("Edit Game")
  end

end
