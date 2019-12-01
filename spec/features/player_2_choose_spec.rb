feature "player_2_choose" do
  scenario "display players names" do
    sign_in
    choose_rock
    expect(page).to have_content("test_player_1 vs test_player_2")
  end

  scenario "prompts player 1 to choose" do
    sign_in
    choose_rock
    expect(page).to have_content("test_player_2, please choose rock, paper or scissors")
  end  
end