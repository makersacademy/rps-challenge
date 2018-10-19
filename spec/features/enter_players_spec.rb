feature 'Register player names' do
  scenario 'submits names' do
    visit('/')
    fill_in :player_one_name, with: 'Bill'
    fill_in :player_two_name, with: 'Opponent'
    click_button 'Submit'
    expect(page).to have_content 'Bill vs. Opponent'
  end
end
