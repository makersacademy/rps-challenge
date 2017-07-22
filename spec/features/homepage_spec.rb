feature 'Entering names' do
  scenario 'viewing homepage' do
    visit('/')
    expect(page).to have_content("Rock, Paper, Scissors")
    expect(page).to have_content("Please enter your name")
  end

  scenario 'submitting name' do
    sign_in
    expect(page).to have_content("Welcome Sam")
    expect(page).to have_content("Start the game")
  end
end
