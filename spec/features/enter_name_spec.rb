require_relative '../../app.rb'

feature "start game" do
  
  scenario "home page has welcome message" do
    visit('/')
    expect(page).to have_content("Welcome to Rock, Paper, Scissors")
  end

  scenario "can enter name and generate new message" do
    sign_in_and_play
    expect(page).to_not have_content("Welcome to Rock, Paper, Scissors")
    expect(page).to have_content("Choose your weapon, Ed")
  end  
  
end
