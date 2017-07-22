feature 'Enter player name' do
  scenario 'submitting player name' do
    visit('/')
    fill_in :player_1_name, with: 'Costas'
    click_button 'Submit'
    expect(page).to have_content 'Costas vs. MacBook Pro'
  end
end
