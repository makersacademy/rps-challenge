require './spec/spec_helper.rb'
require './spec/features/web_helpers.rb'

feature 'Enter names' do
  scenario 'submitting player name' do
    sign_in_and_play
    expect(page).to have_content 'Welcome to the game, Arya!'
  end
end

feature 'Game result' do
  before :each do
    # Seed 67_809 returns :scissors
    srand(67_809)
  end

  scenario 'hunman player loses a game' do  
    sign_in_and_play
    choose('Paper')
    click_button 'Play'
    expect(page).to have_content 'Sorry, you lost'
  end

  scenario 'draw' do
    sign_in_and_play
    choose('Scissors')
    click_button 'Play'
    expect(page).to have_content 'It\'s a draw!'
  end

  scenario 'hunman player wins a game' do
    sign_in_and_play
    choose('Rock')
    click_button 'Play'
    expect(page).to have_content 'Congratulations, you won!'
  end
end
