feature 'Playing' do
  scenario 'player makes a play' do
    visit('/')
    fill_in :player_name, with: 'Layth'
    click_button 'Submit'
    click_button 'rock'
  end
end
