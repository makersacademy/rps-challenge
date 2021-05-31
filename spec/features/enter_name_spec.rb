feature 'Enter player name' do
  scenario 'Marketeer registers their name before the game starts' do
    sign_in_and_play
    expect(page).to have_content 'Welcome to Rock, Paper, Scissors Sarah!'
  end
end
