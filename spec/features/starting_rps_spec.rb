feature "Starting the game" do
    before do
      visit '/'
      fill_in :player_1_name, with: "Jake"
      click_button "Submit"
    end
  scenario "Selecting RPS" do
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  scenario "Player 1 can pick RPS" do
    click_button "Paper"
    expect(page).to have_content "Jake chose Paper"
  end  
end