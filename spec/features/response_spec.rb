feature "response" do
  scenario "it lets the opponent attack the user" do
    sign_in
    click_button 'Rock'
    click_button "Opponent's Move"
    expect(page).to have_content "Opponent used"
  end

  scenario "it lets you go back to the beginning and try again" do
    sign_in
    click_button 'Rock'
    click_button "Opponent's Move"
    click_button "Start Over"
    expect(page).to have_content "Welcome"
  end

end