feature "Announcing a winner" do
  before do
    sign_in_and_start
    srand(12_345)
  end

  scenario "Player 1 wins the round" do
    choose("Rock")
    click_button("Submit")
    expect(page).to have_content("Van wins this round!")
  end

  scenario "Player 1 loses the round" do
    choose("Paper")
    click_button("Submit")
    expect(page).to_not have_content("Van wins this round!")
  end

  scenario "Player 1 ties the round" do
    choose("Scissors")
    click_button("Submit")
    expect(page).to have_content("It's a tie!")
  end
end
