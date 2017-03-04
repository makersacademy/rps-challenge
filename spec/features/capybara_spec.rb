require 'spec_helper'

feature 'Player name entry' do
  scenario 'Should show players name after they input it' do
    visit '/'
    fill_in('player_1', with: 'Vicky')
    click_button('OK!')
    expect(page).to have_content "Vicky, welcome!"
  end
end
