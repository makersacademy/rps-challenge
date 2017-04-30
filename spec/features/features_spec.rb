require 'spec_helper'

feature 'Player name entry' do
  scenario 'Should offer player name form' do
    visit('/')
    expect(page).to have_content "enter your name"
  end
end

feature 'Remembers your name' do
  scenario 'After entering Paul it remembers your name' do
    paul_sign_in
    expect(page).to have_content "OK Paul"
  end
end

feature 'Show rules page' do
  scenario 'After entering name' do
    paul_sign_in
    expect(page).to have_content "Scissors cuts paper"
  end
end

feature 'Show play page' do
  scenario 'After clicking button on rules page' do
    signed_in_and_ready
    expect(page).to have_content 'Choose your weapon!'
  end
end

feature 'Should allow user to select an option' do
  scenario 'Player can select any weapon' do
    signed_in_and_ready
    click_button('scissors')
  end
end
