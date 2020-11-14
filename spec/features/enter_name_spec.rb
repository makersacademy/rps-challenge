feature 'Enter name' do
  scenario 'submitting player name' do
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    click_button 'Submit'
    expect(page).to have_content 'Hello Dave!'
  end
end
