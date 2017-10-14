feature 'takes users name and return new route displaying them' do
  scenario 'user types in two names to form' do
    visit '/'
    fill_in :player_name, with: "Edward"
    click_button "Submit"
    expect(page).to have_content "Edward is now in the game"
  end
end
