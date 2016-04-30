feature "The Game", type: :feature do
  scenario "allows user to input name" do
    sign_in
    expect(page).to have_text("Rock, Paper, Scissors")
  end

  scenario "allows user to pick rock" do
    play_game("Rock")
    expect(page).to have_text("Your choice: Rock")
  end

  scenario "allows user to pick paper" do
    allow(Kernel).to receive(:rand).and_return(2)
    sign_in
    click_button"Paper"
    expect(page).to have_text("Your choice: Paper")
  end

  scenario "allows user to pick scissors" do
    play_game("Scissors")
    expect(page).to have_text("Your choice: Scissors")
  end
end
