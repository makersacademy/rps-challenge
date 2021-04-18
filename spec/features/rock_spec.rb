require './lib/game'
require './lib/player'
feature 'Rock' do

  let(:game) { Game.new("John") }
  # before { allow(Game.new("John")).to receive(:com_move).and_return(:scissors) }

  scenario 'displays a rock message' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content "You selected Rock"
  end
  
  scenario 'displays a win message' do
    sign_in_and_play
    click_button('Rock')
    expect(game).to receive(:com_move).and_return(:scissors)
    expect(page).to have_content "You selected Rock\nCOM selected Scissors\nCongratulations John. You won!" if game.com_move == :scissors
  end

  scenario 'displays a loss message' do
    sign_in_and_play
    click_button('Rock')
    expect(game).to receive(:com_move).and_return(:paper)
    expect(page).to have_content "You selected Rock\nCOM selected Paper\nYou lose!" if game.com_move == :paper
  end

  scenario 'displays a draw message' do
    sign_in_and_play
    click_button('Rock')
    expect(game).to receive(:com_move).and_return(:rock)
    expect(page).to have_content "You selected Rock\nCOM also selected Rock\nIts a tie!" if game.com_move == :rock
  end

  scenario 'it has a replay button' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_button("Play Again")
  end
end