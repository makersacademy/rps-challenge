feature 'We want to see the home page' do
  scenario 'We want to see a welcome message' do
    visit('/')
    expect(page).to have_content("Welcome to the rock, paper, scissors game!")
  end
  scenario 'We want to see instructions for the user' do
    visit('/')
    expect(page).to have_content("Please enter your name and click 'Submit' to start the game!")
  end
end

feature 'We want the user to be able to interact with the home page' do
  scenario 'user enters their name, clicks submit and gets a confirmation' do
    visit('/')
    fill_in "player_name", :with => "Josh"
    click_button "submit"
    expect(page).to have_content("Welcome Josh to the Rock, Paper, Scissors game!")
  end
end