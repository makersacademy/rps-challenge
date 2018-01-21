
feature "after signing in, you choose attack" do

  def make_attack_and_check_it_matched_message(attack)
    choose(attack = "rock")
    click_button "Attack your opponent"
    check_its_not_error_page
    expect(page).to have_content("Derek chose #{attack}")
  end

  background do
    login_with_derek
  end

  scenario "after choosing rock it should confirm your choice" do
    make_attack_and_check_it_matched_message("rock")
  end

  scenario "after choosing paper it should confirm your choice" do
    make_attack_and_check_it_matched_message("paper")
  end

  scenario "after choosing scissors it should confirm your choice" do
    make_attack_and_check_it_matched_message("scissors")
  end

  scenario "rock is default" do
    click_button "Attack your opponent"
    check_its_not_error_page
    expect(page).to have_content("Derek chose rock")
  end
end
