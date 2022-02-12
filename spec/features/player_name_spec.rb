feature 'Enter player name' do
  scenario 'Player enters their name and see it printed' do
    visit('/')
    fill_in :player1_name, with: 'Bob'
    #fill_in :player2_name, with: 'Bob'
    click_button 'Begin!'
    expect(page).to have_content 'Welcome to the game, Bob'
  end
end
