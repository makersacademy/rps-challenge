feature 'index page' do
  before do
    visit '/'
  end

  scenario 'user sees a title on the home page' do
    expect(page).to have_content("R P S !")
  end

  scenario 'user can specify single player mode' do
    single_player = "input[type=submit][value='Single Player']"
    expect(page).to have_selector single_player
  end

  scenario 'user can specify single player mode' do
    multiplayer = "input[type=submit][value='Multiplayer']"
    expect(page).to have_selector multiplayer
  end
end
