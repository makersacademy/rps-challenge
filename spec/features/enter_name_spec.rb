feature 'Enter name' do
  scenario 'submit name' do
    visit('/')
    fill_in :player_1, with: 'Adrien'
    click_button 'Play'
    expect(page).to have_content 'Adrien'
  end
end
