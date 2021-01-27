feature 'Welcoming message' do
  scenario 'it welcomes you in the game' do
    visit('/')
    expect(page).to have_content "Welcome to Rock Paper Scissors"
  end
end
