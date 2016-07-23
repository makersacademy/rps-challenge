feature 'Enter name' do
  scenario 'submitting player name' do
    visit('/')
    fill_in :player_name, with: 'Oggie'
    click_button 'Submit'
    expect(page).to have_content 'Oggie vs. World'
  end
end
