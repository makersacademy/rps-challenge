feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_name, with: 'Joe '
    click_button 'Submit'
    expect(page).to have_content 'Joe'
  end
end
