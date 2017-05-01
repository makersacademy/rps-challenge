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
    paul_ready
    expect(page).to have_content 'Choose your weapon!'
  end
end

feature 'Should allow user to select an option' do
  scenario 'Player can select any weapon' do
    paul_ready
    click_button('scissors')
  end
end

feature 'Should allow a win' do
  scenario 'Player selects rock and wins against' do
  # need to find a randomized way to test this
  end
end
