require 'spec_helper'
require './app'

feature "End game" do
  scenario "Thanks player" do
    sign_in_and_play
    click_button "Rock"
    click_button "End game"
    expect(page).to have_content "Thanks for playing! We hope you had fun!"
  end
end
