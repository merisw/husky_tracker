require 'spec_helper'

feature "Editing Games" do
  scenario "Updating a game" do
    Factory(:game, date: "Sept 10")
    visit '/'
    click_link "Sept 10"
    click_link "Edit Game"
    fill_in "Time", with: "12:30"
    click_button "Update Game"
    page.should have_content("Game has been updated.")
  end
end
