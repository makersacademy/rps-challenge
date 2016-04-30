feature 'Enter player name' do 
  scenario 'submit name' do 
    visit ('/')
    fill_in :player_1_name, with: 'Tom'
    click_button 'Play!'
  end
end