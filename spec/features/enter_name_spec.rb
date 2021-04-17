feature 'Enter player name' do
  scenario 'Marketeer registers their name before the game starts' do
    visit('/')
    fill_in :player_name, with: 'Sarah'
    click_button 'Submit'
    expect(page).to have_content 'Welcome to Rock, Paper, Scissors Sarah!'
  end
end
