require 'spec_helper'

feature "Creating games" do
  scenario "create a game" do
    visit '/'
    click_link "New Game"
    fill_in "Date", with: "Sept 10"
    fill_in "Location", with: "Husky stadium"
    fill_in "Opponent", with: "UCLA"
    click_button "Create Game"
    page.should have_content("Game has been created.")
  end
end
