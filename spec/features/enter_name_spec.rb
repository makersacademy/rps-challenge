

feature "personalised and colorful greeting" do
  scenario "player enters their name at game start" do
    sign_in_and_play
    within('nav') {expect(page).to have_content('Get ready to play RPS, Maker')}
  end
end
