feature 'Enters name' do
  scenario 'user enters their name' do
    visit ('/')
    fill_in :player_name, with: 'Fred'
    click_button 'May the battle commence!'
    expect(page).to have_content 'Fred vs Computer'
  end
end
