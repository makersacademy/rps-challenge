feature 'Starting game' do
  scenario 'player can enter name' do
    sign_in
    expect(page).to have_content "Welcome, Kevin!"
  end
  scenario 'player can start a new game' do
    sign_in
    expect(page).to have_content "Make your choice: Rock, Paper, or Scissors!"
  end
end
