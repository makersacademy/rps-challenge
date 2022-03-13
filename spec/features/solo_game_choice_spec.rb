feature "Choosing a specific button" do

  scenario "rock, shows rock as their choice on the next page" do
    visit("/")
    click_button "Solo Game"
    fill_in :player_1_name, with: "Chris"
    click_button 'Submit'
    click_button "Rock"

    expect(page).to have_content "Chris, you selected Rock"
  end
    
end