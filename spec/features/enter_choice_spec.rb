feature "Enter Choice" do
  scenario "choose rock, paper or scissors" do
    visit('/')

    fill_in :player_1_name, with: "Rachel"
    click_button "Submit"
    select("Rock", from: "player_1_choice")
    click_button "Submit"
    expect(page).to have_content "Rachel: Rock"
  end
end
