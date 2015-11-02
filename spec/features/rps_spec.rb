require 'spec_helper'

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Displays rock paper scissor' do
  scenario 'player can select Rock' do
    register_and_play
    click_button 'Rock'
    expect(page).to have_content ('Amy played Rock')
  end

  scenario 'player can select Paper' do
    register_and_play
    click_button 'Paper'
    expect(page).to have_content ('Amy played Paper')
  end

  scenario 'player can select Scissor'do
    register_and_play
    click_button 'Scissor'
    expect(page).to have_content ('Amy played Scissor')
  end
end
