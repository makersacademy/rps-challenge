feature 'Player can select rock, paper or scissors' do
  scenario "Player can select 'rock'" do
    sign_in_and_play
    choose('Rock')
  end

  scenario "Player can select 'paper'" do
    sign_in_and_play
    choose('Paper')
  end

  scenario "Player can select 'scissors'" do
    sign_in_and_play
    choose('Scissors')
  end

end
