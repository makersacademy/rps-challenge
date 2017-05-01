feature 'Player enters their name' do
  scenario 'Submitting a name' do
    start_game
    expect(page).to have_content 'david'
  end

end
