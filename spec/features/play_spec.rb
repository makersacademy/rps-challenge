feature "To play the game!" do
  scenario "presents the marketeer with 3 choices: rock, paper, scissors" do
    register
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  # scenario "the marketeer can choose an option" do
  #   register
  #   click_button "Rock"
  #   expect(page).to have_content "You have selected Rock"
  # end
end
