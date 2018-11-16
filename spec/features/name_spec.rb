feature "Welcome" do
  scenario "Enter name" do
    visit '/'
    fill_in :player_1_name, with: "Asad"
    click_button "Submit"
    p @player_1_name
    expect(page).to have_content "Let's play Asad!"
  end
end
