require 'spec_helper'

feature 'Player name entry' do
  scenario 'Should show players name after they input it' do
    sign_in_and_play
    expect(page).to have_content "Vicky, welcome!"
  end
end

feature 'Show rules page' do
  scenario 'After entering name' do
    sign_in_and_play
    expect(page).to have_content "How to play?"
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

feature 'Show outcome page' do
  scenario 'After both players have chosen their weapon' do
    allow_any_instance_of(Computer).to receive(:move).and_return(:rock)
    signed_in_and_ready
    click_button('rock')
    expect(page).to have_content "Nobody, it's a tie!"
  end
end
