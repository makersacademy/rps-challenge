feature 'Enter name' do
  scenario 'submitting name' do
    visit '/'
    fill_in :player_1_name, with: 'Nayr'
    click_button 'Submit'
    expect(page).to have_content 'Get ready to play RPS Nayr!'
  end
end
