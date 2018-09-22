require 'spec_helper'
require './app'

feature "End game" do
  scenario "Player is able to choose an option" do
    sign_in_and_play
    click_button "Rock"
    click_button "End game"
    expect(page).to have_content "Thanks for playing! We hope you had fun!"
  end
end
