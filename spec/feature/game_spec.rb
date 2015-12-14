require 'spec_helper'

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'playing a game' do
  scenario 'see the game options' do
    sign_in
    find_button('Rock')
    find_button('Paper')
    find_button('Scissor')
  end
  scenario 'choose the options' do
    sign_in
    click_button('Rock')
    expect(page).to have_content 'You have picked Rock'
  end

  scenario 'I want the computer to choose an option' do
    sign_in
    click_button('Rock')
    expect(page).to have_content 'Computer chose' #need to revist!
  end

  scenario '' do

  end
end
