feature "Computer takes a turn" do

  scenario "Computer makes a move" do
    sign_in
    click_button("rock")
    expect(page).to have_content("Computer chose:")
  end

  scenario "Winner is declared" do
    sign_in
    click_button("rock")
    expect(page).to have_content("The winner is...")
  end

end
