feature 'root page message' do
  scenario 'receives welcome message' do
    visit('/')
    expect(page).to have_content 'Would you like to play a game'
  end
end

feature 'shows game mode selection confirmation' do
  scenario 'single player' do
    visit('/')
    click_button 'Single Player'
    expect(page).to have_content 'You have selected single player mode'
  end
  scenario 'multiplayer' do
    visit('/')
    click_button 'Multiplayer'
    expect(page).to have_content 'You have selected multiplayer mode'
  end
end

feature 'when in single player' do
  scenario 'shows player name' do
    single_sign_in
    expect(page).to have_content 'Welcome samir!'
  end
end

feature 'when in multiplayer' do
  scenario 'welcomes player names' do
    multi_sign_in
    expect(page).to have_content 'Welcome samir!'
    expect(page).to have_content 'Welcome jess!'
  end
end
