feature "Select whether to play vs computer or pass and play" do

  scenario "Expect solo-game page to have a form to enter name and submit" do
    visit("/")
    click_button "Solo Game"
    expect(page).to have_content "Enter Name"
    expect(page).to have_button "Submit"
  end

  scenario "Names page displays the users name" do
    visit("/")
    click_button "Solo Game"
    fill_in :player_1_name, with: "Chris"
    click_button 'Submit'
    expect(page).to have_content "Hello, Chris"
  end

end