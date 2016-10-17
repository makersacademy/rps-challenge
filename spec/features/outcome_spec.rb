feature 'display the outcome of a two player game game' do
  scenario 'two player game, player one wins' do
    sign_in_2p
    click_button "ROCK"
    click_button "SCISSORS"
    expect(page).to have_content "Leeroy won"
  end
  scenario 'two player game, player two wins' do
    sign_in_2p
    click_button "SCISSORS"
    click_button "ROCK"
    expect(page).to have_content "Royston won"
  end
  scenario 'two player game, player two wins' do
    sign_in_2p
    click_button "ROCK"
    click_button "ROCK"
    expect(page).to have_content "It's a tie!"
  end
end

feature 'display the outcome of a one player game game' do
  scenario 'one player game, player one wins' do
    sign_in_1p
    click_button "ROCK"
    allow(Game.return_current_game.weapon_two).to receive(:computer_choice).and_return(:scissors)
    expect(page).to have_content "You chose rock"
  end
  scenario 'one player game, computer wins' do
    sign_in_1p
    click_button "SCISSORS"
    allow(Game.return_current_game.weapon_two).to receive(:computer_choice).and_return(:rock)
    expect(page).to have_content "You chose scissors"
  end
   scenario 'two player game, tie' do
     sign_in_1p
     click_button "PAPER"
     allow(Game.return_current_game.weapon_two).to receive(:computer_choice).and_return(:rock)
     expect(page). to have_content "You chose paper"
   end
end
