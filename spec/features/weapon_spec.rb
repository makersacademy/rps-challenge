require_relative '../spec_helper'


feature 'confirming weapons' do
  before do
    sign_in_and_play
  end

# As a marketeer
# So I can play a game
# I want to choose a weapon to play with
  scenario 'player chooses rock' do
    click_button 'rock'
    expect(page).to have_content 'Anna, your chosen weapon is: rock'
  end

  scenario 'player chooses paper' do
    click_button 'paper'
    expect(page).to have_content 'Anna, your chosen weapon is: paper'
  end

  scenario 'player chooses scissors' do
    click_button 'scissors'
    expect(page).to have_content 'Anna, your chosen weapon is: scissors'
  end



# As a marketeer
# So I can play a game
# I want the game to choose an weapon option
end
