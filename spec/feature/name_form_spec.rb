require './app'

feature 'player can enter name' do
  scenario 'player enters name and starts the game' do
    visit '/'
    fill_in('player_name', with: 'Patrick')
    click_on 'Start Game!'
    expect(page).to have_content "Welcome to Rock, Paper, Scissors Patrick!"
  end
end
