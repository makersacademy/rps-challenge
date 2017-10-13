feature "To play the game!" do
  scenario "presents the player with 3 choices: rock, paper, scissors" do
    visit '/'
    fill_in :marketeer_name, with: 'Liv'
    click_button 'Register'
    expect(page).to have_content "Welcome Liv!"
    expect(page).to have_content "Choose: Rock, Paper or Scissors"
  end
end
