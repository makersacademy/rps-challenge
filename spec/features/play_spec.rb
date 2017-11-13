feature "To play the game" do
  scenario "presents the marketeer with 3 choices: rock, paper, scissors" do
    register
    expect(page).to have_button "Rock"
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario "if player chooses an option" do
    register
    click_button "Rock"
    expect(page).to have_content "And the result is....."
  end
end
