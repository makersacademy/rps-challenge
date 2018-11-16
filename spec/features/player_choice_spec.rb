feature "player choice options" do
  scenario "be able to choose Rock" do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "You picked Rock!"
  end

  scenario "be able to choose Paper" do
    sign_in_and_play
    click_button "Paper"
    expect(page).to have_content "You picked Paper!"
  end

  scenario "be able to choose Scissors" do
    sign_in_and_play
    click_button "Scissors"
    expect(page).to have_content "You picked Scissors!"
  end
end
