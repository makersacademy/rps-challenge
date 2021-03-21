require './lib/rps'

feature '/game' do
  scenario 'you see your name' do
    visit '/'
    fill_in 'player', with: 'Emma'
    click_button 'go!'
    expect(page).to have_content 'Welcome Emma!'
  end

  scenario 'it should have image to click' do 
    visit '/'
    fill_in 'player', with: 'Emma'
    click_button 'go!'
    click_button 'ROCK'
    expect(page).to have_content "The computer played"
  end 
end 

feature '/play' do
  scenario 'you know what the computer played' do
    visit '/'
    fill_in 'player', with: 'Emma'
    click_button 'go!'
    click_button 'ROCK'
    allow($game).to receive(:computer_play) { 'SCISSORS' }
    expect(page).to have_content "The computer played"
  end 

  feature '/win' do
    scenario 'it allow the player to play again' do 
      visit '/'
      fill_in 'player', with: 'Emma'
      click_button 'go!'
      click_button 'ROCK'
      expect(page).to have_content "Play again"
    end 
  end 
end 
