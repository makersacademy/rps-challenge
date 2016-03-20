feature 'Create new player' do

  scenario 'user enters name' do
    start_game
    expect(page).to have_text("Welcome Sachin!")
  end

end