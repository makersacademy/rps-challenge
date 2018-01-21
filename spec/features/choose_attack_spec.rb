
feature "after signing in, you choose attack" do

  scenario "after choosing rock it should confirm your choice" do
    make_attack_with_different_objects("rock")
    expect(page).to have_content("Derek choses rock")
  end

  scenario "after choosing paper it should confirm your choice" do
    make_attack_with_different_objects("paper")
    expect(page).to have_content("Derek choses paper")
  end

  scenario "after choosing scissors it should confirm your choice" do
    make_attack_with_different_objects("scissors")
    expect(page).to have_content("Derek choses scissors")
  end

  scenario "rock is default" do
    login_with_derek
    click_button "Attack your opponent"
    check_its_not_error_page
    expect(page).to have_content("Derek choses rock")
  end
end
