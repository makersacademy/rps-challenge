feature 'play the game' do

  scenario 'player can choose "Rock"' do
    sign_in
    choose('choice', option: 'Rock')
  end

  scenario 'player can choose "Paper"' do
    sign_in
    choose('choice', option: 'Paper')
  end

  scenario 'player can choose "Scissors"' do
    sign_in
    choose('choice', option: 'Scissors')
  end
end
