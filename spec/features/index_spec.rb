feature 'Displays the home page' do
  scenario 'Displays the name of the game and a sign in box' do
    visit ("/")
    expect(page).to have_content("What's your name?")
  end
end
