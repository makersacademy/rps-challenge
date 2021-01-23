feature 'Enter name' do
  scenario 'register' do
    visit('/')
    fill_in :player_1_name, with: 'Oscar'
    click_button 'Submit'
    expect(page).to have_content 'Oscar'
  end
end
