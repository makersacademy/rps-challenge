feature 'Play RPS' do
  scenario 'as a marketeer I would like to be able to play Rock, Paper, Scissors' do
  # initial sign in sequence
    visit('/')
    fill_in :player_name, with: 'Ginny'
    click_button "Let's Play!"
  # takes you to /play page that has player name vs Computer
    click_button "Start a Game"
    expect(page).to have_content 'Ginny choose Rock, Paper, or Scissors'
  end
end
