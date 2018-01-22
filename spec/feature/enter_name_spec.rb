feature 'user can fill in name' do
  scenario 'name is displayed' do
    visit('/')
    fill_in 'player', with: 'Alex'
    click_button 'Submit'
    expect(page).to have_content 'Alex'
  end
end
