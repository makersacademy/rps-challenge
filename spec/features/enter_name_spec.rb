feature 'takes users name and returns new route displaying their name' do
  scenario 'user types name into form' do
    visit '/'
    fill_in :player_name, with: "Edward"
    click_button "Submit"
    expect(page).to have_content "Edward is now in the game"
  end
end
