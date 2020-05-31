feature "Check homepage functionality" do
  scenario "Asks user to enter their name" do
    visit('/')
    expect(page).to have_content("Please enter your name")
  end

  scenario "Takes you to game page" do
    visit('/')
    fill_in('player_name', with: 'John')
    click_button('submit')
    expect(page).to have_content("John")
  end
end

feature "Test Rock, Paper, Scissors functionality" do
  scenario "Asks user to select rock, paper or scissors" do
    visit('/')
    fill_in('player_name', with: 'John')
    click_button('submit')
    expect(page).to have_content("choose rock, paper or scissors")
  end
end
