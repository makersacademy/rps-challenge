require 'spec_helper'

feature 'game in play' do

  scenario 'see the options' do
    visit ('/')
    fill_in :player_name, with: "Lucy"
    click_button 'Submit'
    expect(page).to have_content "Rock"
    expect(page).to have_content "Paper"
    expect(page).to have_content "Scissors"
  end
end
