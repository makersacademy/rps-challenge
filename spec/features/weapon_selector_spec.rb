require 'spec_helper'

feature 'select a weapon' do
  scenario 'selects scissors as weapon' do
    register_and_play
    click_button "Scissors"
    expect(page).to(have_content("You have selected Scissors"))
  end
end
