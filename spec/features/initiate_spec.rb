#1. I would like to initiate a game of rock paper scissors

feature 'Initiate' do
  scenario 'start game' do
    visit '/'
    fill_in :player_name, with: 'Goose'
    click_button 'Submit'
    click_button 'Start game'
    expect(page).to have_content 'Please enter your weapon:'
  end
end
