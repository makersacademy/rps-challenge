feature "Enter names" do
  scenario "submitting names" do  
    visit("/")
    fill_in :player_1_name, with: "Farzan"
    click_button "Submit"

    save_and_open_page

    expect(page).to have_content("Farzan Vs. Computer")
  end

  scenario "display homepage" do
    visit '/'
    expect(page).to have_content("Welcome to: Rock, Paper, Scissors!")
    expect(page).to have_content("Please enter your name to start:")
    expect(page).to have_button("Let's play!")
    expect(page).to have_button("Reset")
  end 
end
