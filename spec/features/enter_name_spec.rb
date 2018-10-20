feature "Enter player name" do
  scenario "submitted name should appear on screen in 1 player mode" do
    one_player_sign_in_and_play
    expect(page).to have_content "Imtiyaz vs Computer"
  end

  scenario "submitted names should appear on screen in 2 player mode" do
    two_player_sign_in_and_play
    expect(page).to have_content "Mario vs Luigi"
  end
end
