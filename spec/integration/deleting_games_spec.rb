require 'spec_helper'

feature "Deleting games" do
  scenario "Deleting a game" do
    Factory(:game, date: "Sept 10")
    visit '/'
    click_link "Sept 10"
    click_link "Delete Game"
    page.should have_content("Game has been deleted.")

    visit '/'
    page.should_not have_content("Sept 10")
  end
end
