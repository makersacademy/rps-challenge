require 'spec_helper'

feature "when I choose rock" do
  scenario "I can see that I've chosen rock" do
    sign_in_and_play
    click_button ('Rock')
    expect(page).to have_content("You chose Rock!")
  end
end
