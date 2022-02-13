feature 'Displays the player\'s choices for game' do
    scenario 'Rock button' do
      sign_in_and_play
      find_button('Rock').click
    end
  
    scenario 'Paper button' do
      sign_in_and_play
      find_button('Paper').click
    end
  
    scenario 'Scissors button' do
      sign_in_and_play
      find_button('Scissors').click
    end
  end