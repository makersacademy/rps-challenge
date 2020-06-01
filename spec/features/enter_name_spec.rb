feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Emanuele'
    # fill_in :player_2_name, with: 'PC'
    click_button 'Submit'
    expect(page).to have_content 'Emanuele Ready?'
  end
end
