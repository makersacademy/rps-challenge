#1. I would like to initiate a game of rock paper scissors

feature 'Initiate' do
  scenario 'start game' do
    sign_in_and_play
    click_button 'Start game'
    expect(page).to have_content 'Please enter your weapon:'
  end
end
