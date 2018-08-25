feature 'Enter name' do
  scenario 'Can run app and check player name' do
    visit '/'
    fill_in :player_name, with: "Bob"
    click_button "Play"
    expect(page).to have_content "Bob"
  end
end
