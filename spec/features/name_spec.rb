require 'spec_helper'

feature 'enter player\'s name' do
  scenario 'submit name' do
    sign_in_and_play
    expect(page).to have_content('Stephan')
  end
end

feature 'choose your weapon' do
  scenario 'choose one weapon' do
    sign_in_and_play
    expect(page).to have_content('Stephan')
    click_button('Rock')
    expect(page).to have_content('You choose Rock!')
  end
end
