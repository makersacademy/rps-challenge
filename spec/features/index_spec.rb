feature 'Enter player name' do
  scenario 'Can receive entered player name' do
    visit ('/')
    fill_in :player1, with: 'Marketeer'
    click_button 'play!'
  end
  
end
