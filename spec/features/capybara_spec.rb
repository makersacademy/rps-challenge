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
