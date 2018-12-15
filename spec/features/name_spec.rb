feature 'Players can enter names' do
  scenario 'and see them when battles starts' do
    visit('/')
    fill_in :player_1_name, with: 'Samson'
    click_button 'Submit'
    expect(page).to have_content 'Samson'
  end
end
