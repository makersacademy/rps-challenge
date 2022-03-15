feature "Choosing a specific button" do

  scenario "rock, shows rock as their choice on the next page" do
    solo_submit_name
    click_button "Rock"

    expect(page).to have_content "Chris, you selected Rock"
  end
    
end