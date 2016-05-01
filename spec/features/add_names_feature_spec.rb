
require 'spec_helper'

feature "Player enters their name" do
  scenario "A user enters their name" do
    visit '/'
     fill_in 'player_name', :with => "Lucy"
     click_button "Let's Play!"
     expect(page).to have_content("Lucy")
  end
end
