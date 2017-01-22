feature "another human player" do
  scenario "asks for more info when p2 is chosen" do
    visit "/"
    choose 'human'
    choose 'Scissors'
    fill_in 'player_1_name', with: "Billy"

    click_button("FIGHT")

    fill_in 'player_2_name', with: "Bob"
    choose 'Rock'
    click_button("FIGHT")

    expect(page).to have_content "Bob has emerged victorious against Billy"
    expect(page).to have_content "Billy picked scissors Bob picked rock"
  end
end
