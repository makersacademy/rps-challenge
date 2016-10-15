require 'spec_helper'
require 'app'
require 'views/game'


feature 'Display result' do

  before do
    visit('/who')
    fill_in "player1", with: 'Susan Sarandon'
    click_button 'Play!'
    click_button 'Rock!'
  end

  scenario 'declares winner and displays result' do
    #computer needs to select scissors
    expect(page).to have_content 'The Winner is: Susan Sarandon!'
  end
end
