
feature 'player_name has three choices' do

  scenario 'player can select rock' do
    sign_in_and_play
    click_button('Rock')
  end

  scenario 'player can select paper' do
    sign_in_and_play
    click_button('Paper')
  end

  scenario 'player can select scissors' do
    sign_in_and_play
    click_button('Scissors')
  end

end
