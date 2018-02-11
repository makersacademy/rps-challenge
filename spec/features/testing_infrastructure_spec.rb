feature "Testing infrastructure" do
  
  scenario "App runs and displays page content" do
    visit('/')
    expect(page).to have_content("Rock, Paper, Scissors, Spock, Lizard!")
  end

end
