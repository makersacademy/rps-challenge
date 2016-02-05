feature "Sign in page is displayed" do
  scenario "Player can see the sign in page" do
    visit('/')
    expect(page).to have_content "Welcome to Rock Paper Scissors!"
  end
  
  scenario "Player has a field to input into" do
    visit('/')
    find_field('player_1').value
  end
  
  scenario "Player can submit and start the game" do
    visit('/')
    find_button('Start').click
  end
end