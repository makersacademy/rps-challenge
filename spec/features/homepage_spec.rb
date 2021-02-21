feature 'welcome page' do
  scenario 'displays welcome message' do
    visit("/")
    expect(page).to have_content("Hello and welcome to Rock Paper Scissors!")
  end
  scenario 'can be returned to once game is over' do
    sign_in_and_play
    win_game
    click_link "Start again"
    expect(page).to have_content("Hello and welcome to Rock Paper Scissors!")
  end
end
