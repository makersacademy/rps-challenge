feature 'Player can select rock, paper or scissors' do
  scenario "Player can select 'rock'" do
    sign_in_and_play
    find_button('Rock').click
  end

  scenario "Player can select 'paper'" do
    sign_in_and_play
    find_button('Paper').click
  end

  scenario "Player can select 'scissors'" do
    sign_in_and_play
    find_button('Scissors').click
  end

end
