require 'spec_helper'

feature 'View Rock Paper Scissors' do
  scenario 'the candidates will be presented the choices (rock, paper or scissors)' do
    visit('/')
    fill_in :player_1_name, with: 'Brian'
    fill_in :player_2_name, with: 'Tom'
    click_button 'Submit'
    expect(page).to have_content 'Rock, Paper or Scissors'
  end

end
