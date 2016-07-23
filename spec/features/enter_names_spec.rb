feature 'Initializing the game' do
  scenario 'User can enter there name and expect name output on page' do
    sign_in_to_play
    expect(page).to have_content('Welcome Mannie')
  end
end
