feature 'Computer selects weapon' do
  scenario 'Weapon chosen randomly' do
    visit '/'
    fill_in :player_name, with: 'Cat'
    click_button 'rock'
    expect(page).to have_content 'Cat'
    expect(page).to have_content 'rock'
  end
end