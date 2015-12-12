feature 'Enter names' do
  scenario 'submitting name' do
    visit('/')
    fill_in :player_1_name, with: 'Jon'
    click_button('Start a new game')
    expect(page).to have_content 'Jon'
  end
end
