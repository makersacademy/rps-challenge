feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Bella'
    fill_in :player_2_name, with: 'Marjan'
    click_button 'Submit'
    expect(page).to have_content 'Bella vs. Marjan'
  end
end
