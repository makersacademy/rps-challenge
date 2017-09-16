feature 'it displays the players name' do
  scenario 'player has entered their name' do
    visit '/'
    fill_in :name, with: 'James'
    click_button 'OK'
    expect(page).to have_content 'James'
  end
end
