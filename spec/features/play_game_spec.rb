feature "the user can play the game" do

  scenario "the user can choose between rock paper and scissors" do
    sign_in_to_play
    expect(page).to have_content "Rock"
    expect(page).to have_content "Paper"
    expect(page).to have_content "Scissors"
  end

  scenario "the user can see if they won or lost" do
    sign_in_to_play
    find("input[value='Rock']").click
    click_button("Confirm")
    expect(page).to have_content "Nobody wins!"
  end

end
