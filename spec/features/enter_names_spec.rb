feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    click_button "Let's play!"
    fill_in :player_1_name, with: 'Nigel'
    fill_in :player_2_name, with: 'Peter'
    click_button 'Submit'
    expect(page).to have_content 'Nigel vs. Peter'
  end
end
