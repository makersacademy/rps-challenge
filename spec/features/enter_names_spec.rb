feature 'Enter names' do
  scenario 'submitting names' do
    visit '/'
    fill_in :player_1_name, with: 'Player 1'
    click_button 'Submit'
    expect(page).to have_content 'Player 1 vs. bot'
  end
end
