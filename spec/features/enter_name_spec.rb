feature 'Enter player name' do
  scenario 'submits name' do
    visit('/')
    fill_in :player, with: 'Chloe'
    click_button 'Submit'
    expect(page).to have_content 'Chloe vs. Computer'
  end
end
