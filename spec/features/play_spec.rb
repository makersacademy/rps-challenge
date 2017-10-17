feature "display players information and player's options" do

  scenario "play page should display player's information" do
    sign_in_page
    expect(page).to have_content "Rock Star Marketeer VS Game"
  end

  scenario "play page should allow player to select a weapon" do
    sign_in_page
    expect(page).to have_content "Select from options below:"
    click_button "Rock" 
  end

end
