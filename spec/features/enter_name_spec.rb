feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_name, with: 'Bejlo'
    click_button 'Submit'
    expect(page).to have_content 'In the red corner ... Bejlo'
  end
end
