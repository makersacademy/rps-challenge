
feature 'Welcome screen' do
  scenario 'homepage to display a message, which welcomes the players' do
    visit('/')
    expect(page).to have_content "Welcome to the game of Rock Paper & Scissors\nPlease enter you name"
  end
  scenario 'homepage to display box to enter the name and submit button' do
    visit('/')
    expect(page).to have_button "Submit"
  end
end
