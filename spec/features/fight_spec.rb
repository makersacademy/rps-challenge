feature "FEATURE: fight details" do
  scenario "player name and weapon displayed" do
    sign_in_play_and_choose_rock
    expect(page).to have_content "Alistair uses rock"
  end
end
