feature 'register name before play' do
  scenario 'player can put in name and see their names' do
    visit('/')
    fill_in :player_name, with: 'Hulk'
    click_button "Submit"
    expect(page).to have_content 'Hulk vs. Computer'
  end
end