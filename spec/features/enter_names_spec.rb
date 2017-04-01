feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Pedro'
    fill_in :player_2_name, with: 'Trish'
    click_button 'Submit'
    expect(page).to have_content 'Pedro vs. Trish'
  end
end
