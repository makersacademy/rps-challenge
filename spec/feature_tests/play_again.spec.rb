feature "Play again?" do
  scenario "player clicks on Yes button" do
    enter_name_and_ok
    click_button "Paper"
    click_button "Yes"
    expect(page).to have_content "what is your choice?"
  end
end

feature "Play again?" do
  scenario "player clicks on No button" do
    enter_name_and_ok
    click_button "Paper"
    click_button "No"
    expect(page).to have_content "Rock Paper Scissors"
  end
end