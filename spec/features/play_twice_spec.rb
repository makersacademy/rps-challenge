feature "You can play multiple games" do

  scenario "You attack with rock once, then with paper" do
    attack_with_rock
    click_button "Play again"
    make_attack_with_different_objects("paper")
    check_its_not_error_page
    expect(page).to have_content("Derek choses paper")
  end

end
