require_relative '../../app.rb'

feature "home page" do
  
  scenario "has welcome message" do
    visit('/')
    expect(page).to have_content("Welcome to Rock, Paper, Scissors")
  end

  scenario "can enter name via form" do
    sign_in_and_play
    expect(page).to_not have_content("Welcome to Rock, Paper, Scissors")
    expect(page).to have_content("Choose your weapon, Ed")
  end  
  
end
