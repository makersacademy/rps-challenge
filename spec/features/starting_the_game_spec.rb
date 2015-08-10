require 'spec_helper'

feature 'Starting the game' do
  scenario 'I choose single player' do
    visit '/'
    click_button('Classic RPS')
    fill_in('player_name', with: 'Rebecca')
    click_button('Submit')
    click_button('Single Player')
    expect(page).to have_content('Rebecca make your choice!')
  end

  scenario 'I choose two player' do
    visit '/'
    click_button('Classic RPS')
    fill_in('player_name', with: 'Rebecca')
    click_button('Submit')
    click_button('Two Players')
    expect(page).to have_content('Waiting for Player Two.')
  end
end