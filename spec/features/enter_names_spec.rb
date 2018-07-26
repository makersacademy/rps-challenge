feature 'Player enters name' do

  scenario 'accepts player input and redirect path' do
    enter_name_and_play
    expect(page).to have_content 'Welcome to the game, Player'
  end

end
