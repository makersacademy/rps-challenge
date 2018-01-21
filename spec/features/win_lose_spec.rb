
feature "you choose rock, and it gives the result.." do

  def attack_with_rock
    click_button "Attack your opponent"
    check_its_not_error_page

  end

  background do
    login_with_derek
  end

  scenario "lose, when the game picks paper" do
    attack_with_rock
    allow(Game).to receive(:choice) { "paper" }
    expect(page).to have_content("You lose!")
  end

  # scenario "win, when the game picks paper" do
  #
  #   expect(page).to have_content("Derek loses!")
  # end
  #
  # scenario "draw when the game picks rock" do
  #   make_attack_and_check_it_matched_message("scissors")
  # end

end
