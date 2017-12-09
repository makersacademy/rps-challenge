feature 'Entering names' do
  scenario "players can enter their names" do
    visit('/')
    fill_in :player_1_name, with: 'Lan'
    fill_in :player_2_name, with: 'Albion'
    click_button 'Submit'
    expect(page).to have_content 'Lan vs. Albion'
  end
end
