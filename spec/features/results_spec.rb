feature "Announcing a winner" do
  scenario "Player 1 wins the round" do
    sign_in_and_start
    choose("Rock")
    srand(12_345)
    click_button("Submit")
    expect(page).to have_content("Van wins this round!")
  end
end
