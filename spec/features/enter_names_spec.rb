feature 'Player enters name' do

  scenario 'accepts player input and redirect path' do
    visit ('/')
    fill_in :player_name, with: 'Player'
    click_button 'Submit'
    expect(page).to have_content 'Welcome to the game, Player'
  end

end
