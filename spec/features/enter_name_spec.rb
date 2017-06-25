

feature "personalised greeting" do
  scenario "player enters their name at game start" do
    sign_in_and_play
    expect(page).to have_content('Get ready to play RPS, Maker')
  end
end

feature "colorful greeting" do
  scenario "player enters their name at game start" do
    sign_in_and_play
    expect(page).to have_css('span.color')
  end
end
