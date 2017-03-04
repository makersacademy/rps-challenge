
feature 'player_name has three choices' do

  scenario 'player can select rock' do
    visit('/')
    fill_in :player_name, with: 'Bernard'
    click_button 'Play'
    click_button('Rock')
  end

  scenario 'player can select paper' do
    visit('/')
    fill_in :player_name, with: 'Bernard'
    click_button 'Play'
    click_button('Paper')
  end

  scenario 'player can select scissors' do
    visit('/')
    fill_in :player_name, with: 'Bernard'
    click_button 'Play'
    click_button('Scissors')
  end

end
