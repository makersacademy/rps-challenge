feature 'user choice printed' do
  scenario 'user selects "Rock" button' do
    visit('/')
    fill_in :player_1_name, with: 'Alicia'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content 'Alicia chose Rock'
  end
end