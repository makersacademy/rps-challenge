feature 'Player to enter their name' do
  scenario '- enter their name' do
    game_sign_in
    expect(page).to have_content 'Player 1: Jane'
  end
end
