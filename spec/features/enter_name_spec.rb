feature 'Enter names' do
  scenario 'submit player name' do
    visit('/')
    fill_in :player_name, with: 'Graham'
    click_button 'Play'
  end
end
