feature "FIGHT!" do
  scenario "player name and weapon to be displayed" do
    sign_in
    click_button "rock"
    expect(page).to have_content "Jordan uses rock"
  end
end
