require 'spec_helper'

feature 'Player name entry' do
  scenario 'Should show players name after they input it' do
    sign_in_and_play
    expect(page).to have_content "Vicky, welcome!"
  end
end

feature 'Show to rules page' do
  scenario 'After entering name' do
    sign_in_and_play
    expect(page).to have_content "How to play?"
  end
end

feature 'Show play page' do
  scenario 'After clicking button on rules page' do
    sign_in_and_play
    click_button('Ready!')
    expect(page).to have_content 'Choose your weapon!'
  end
end

feature 'Show outcome page' do
  scenario 'After both players have chosen their weapon' do
    sign_in_and_play
    click_button('Ready!')
    click_button('Rock')
  end
end
