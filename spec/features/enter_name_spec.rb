feature 'Enter player name' do
  scenario 'submits name' do
    visit('/')
    fill_in :player_name, with: 'Chloe'
    click_button 'Submit'
    expect(page).to have_content 'Chloe vs. Computer'
  end
end
