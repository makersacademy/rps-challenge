feature "Sign in page is displayed" do
  
  before do
    visit('/')
  end
  
  scenario "Player can see the sign in page" do
    expect(page).to have_content "Welcome to Rock Paper Scissors Lizard Spock!"
  end
  
  scenario "Player has a field to input into" do
    find_field('player_name').value
  end
  
  scenario "Player can submit and start the game" do
    find_button('Start').click
  end
end
    
feature "Player's choice" do
  
  before do
    visit('/')
  end
  
  scenario "Player can choose Rock" do
    click_button('Start')
    expect(page).to have_button "Rock"
  end
  
  scenario "Player can choose Paper" do
    click_button('Start')
    expect(page).to have_button "Paper"
  end
  
  scenario "Player can choose Scissors" do
    click_button('Start')
    expect(page).to have_button "Scissors"
  end
end