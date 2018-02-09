feature 'entering names' do
  scenario 'Players enter their names' do
    visit '/'
    fill_in :player_1, with: "Telgi"
    fill_in :player_2, with: "Jogi"
    click_button "Submit"
    expect(page).to have_content "Telgi VS Jogi"
  end
end
