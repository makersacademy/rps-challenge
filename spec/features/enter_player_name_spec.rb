feature 'Enter name page' do
  scenario 'Allow player to enter their name' do
    visit '/'
    fill_in :player_name, :with => 'Player'
    click_button "Start game"
    expect(page).to have_content("Let's play a game of ROCK, PAPER, SCISSORS!")
  end
end
