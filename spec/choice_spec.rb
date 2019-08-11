
feature "Choice" do
  scenario "user chooses rock" do
    visit ("/")
    fill_in :player_name, with: "Ben"
    click_button "Submit"
    click_button "rock"
    expect(page).to have_content "You chose rock"
  end
  scenario "user chooses paper" do
    visit ("/")
    fill_in :player_name, with: "Ben"
    click_button "Submit"
    click_button "paper"
    expect(page).to have_content "You chose paper"
  end
  scenario "user chooses scissors" do
    visit ("/")
    fill_in :player_name, with: "Ben"
    click_button "Submit"
    click_button "scissors"
    expect(page).to have_content "You chose scissors"
  end
end
