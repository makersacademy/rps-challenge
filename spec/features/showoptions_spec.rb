require 'spec_helper'

feature 'Buttons exist' do

  scenario 'has buttons rock, paper, scissors' do
    visit('/')
    fill_in :player_name, with: 'Ross'
    click_button('Submit')
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end
end
