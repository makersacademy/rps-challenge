feature "Player selects rock" do
  scenario "Player selects rock, computer selects paper" do
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content "You selected rock & the computer selected "
  end
end