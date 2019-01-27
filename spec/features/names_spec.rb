feature 'Player Names:' do
  scenario '1. Players can enter their names' do
    include sign_in
    expect(page).to have_content 'Welcome to the game, Neville.'
  end
end
