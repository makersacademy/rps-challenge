require 'spec_helper'

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Displays rock paper scissor options' do
  scenario 'player can choose Rock' do
    register_and_play
    click_button 'Rock'
    expect(page).to have_content ('Amy played rock')
  end

  scenario 'player can choose Paper' do
    register_and_play
    click_button 'Paper'
    expect(page).to have_content ('Amy played paper')
  end

  scenario 'player can choose Scissor'do
    register_and_play
    click_button 'Scissor'
    expect(page).to have_content ('Amy played scissor')
  end
end
