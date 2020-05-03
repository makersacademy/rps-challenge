feature 'View turn' do
scenario 'see what my turn will be' do
  visit('/')
    fill_in :player_1_name, with: 'Steve'
    click_button 'Submit'
 expect(page).to have_content 'Choose Rock, Paper, Scissors'
end
end
