feature 'Enter name' do
  scenario 'Submitting name' do
    visit('/')
    fill_in :player_name, with: 'Amy'
    click_button 'Submit'
    expect(page).to have_content 'Hello Amy'
  end
end
