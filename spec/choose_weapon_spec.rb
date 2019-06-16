require 'spec_helper.rb'
require './app.rb'


feature 'choose weapon' do
  scenario 'Player 1 chooses Rock, Paper or Scissors' do
    visit('/')
    fill_in "player_1", with: 'Carl'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content "You selected Rock"
  end
end
