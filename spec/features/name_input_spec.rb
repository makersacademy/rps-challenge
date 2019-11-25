feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_name, with: 'Rana'
    click_button 'Submit'
    expect(page).to have_content 'Rana'
  end
end
