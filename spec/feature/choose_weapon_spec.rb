feature 'Play' do
  scenario 'Choose weapon' do
    sign_in_and_play
    fill_in("weapon", with: "rock")
    click_button "Submit"
    expect(page).to have_content("rock")
  end
end
