feature "names" do

  scenario "display homepage" do
    visit '/'
    expect(page).to have_content("Welcome to Rock, Paper and Scissors")
    expect(page).to have_content("Please enter your name")
    expect(page).to have_content("Player 1:")
    expect(page).to have_content("Player 2:")
    expect(page).to have_field("player1")
    expect(page).to have_field("player1")
    expect(page).to have_button("Let's Play!")
  end 


end 