feature "Choosing scissors" do
  scenario "confirms player chose scissors" do
    one_player_sign_in_and_play
    click_button("Scissors")
    expect(page).to have_content("Imtiyaz chose Scissors")
  end
end
