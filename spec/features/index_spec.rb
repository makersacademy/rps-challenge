feature 'Enter player name' do
  scenario 'Can receive entered player name' do
    visit ('/')
    fill_in :player1, with: 'Marketeer'
    click_button 'play!'
  end
  scenario 'Can see entered name being greeted before the game begins' do
    visit ('/')
    fill_in :player1, with: 'Marketeer'
    click_button 'play!'
    expect(page).to have_content "Welcome, Marketeer! Your game is ready."
  end
end
