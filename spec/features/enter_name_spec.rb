feature 'Enter name' do
  scenario ' player can enter name' do
    visit('/')
    fill_in :player_1_name, with: 'Player 1'
    click_button 'Submit'
  end
end
