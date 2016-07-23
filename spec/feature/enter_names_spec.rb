feature 'enter names' do
  scenario 'players can enter their name' do
    visit '/'
    fill_in :player_1_name, with:'Thady'
    click_button 'Submit'
    expect(page).to have_content 'Thady vs. The Machine'
  end
end
