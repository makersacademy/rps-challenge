feature 'start a new game' do
  scenario 'player is taken home page after game concludes' do
    sign_in_and_play
    click_link('play again')
    expect(page).to have_content 'What is your name?'
  end
end

feature 'a game is drawn' do
  scenario "player and opponent select paper, the same option" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    sign_in_and_play
    expect(page).to have_content "It's a draw..."
  end
end

feature 'player loses the game' do
  scenario "player selects paper which is defeated by scissors" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    sign_in_and_play
    expect(page).to have_content "You lose"
  end
end

feature 'player wins the game' do
  scenario "player selects paper which defeats rock" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    sign_in_and_play
    expect(page).to have_content "You win"
  end
end
