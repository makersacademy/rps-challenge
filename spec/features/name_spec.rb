feature 'Enter names' do

  scenario 'display player name when entered' do
    visit('/')
    fill_in :player_name, with: 'Heather'
    click_button 'Submit'
    expect(page).to have_content 'Heather vs. THE COMPUTER'
  end

end
