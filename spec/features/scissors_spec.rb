require './lib/game'
feature 'Scissors' do
  let(:game) { Game.new("John") }
  
  scenario 'displays a scissors message' do
    sign_in_and_play
    click_button("Scissors")
    expect(page).to have_content 'You selected Scissors'
  end

  scenario 'displays a win message' do
    sign_in_and_play
    click_button('Scissors')
    p expect(game).to receive(:com_move) { :paper }
    expect(page).to have_content "You selected Scissors\nCOM selected Paper\nCongratulations John. You won!" if game.com_move == :paper
  end

  scenario 'displays a loss message' do
    sign_in_and_play
    click_button('Scissors')
    expect(game).to receive(:com_move).and_return(:rock)
    expect(page).to have_content "You selected Scissors\nCOM selected Rock\nYou lose!" if game.com_move == :rock
  end

  scenario 'displays a draw message' do
    sign_in_and_play
    click_button('Scissors')
    expect(game).to receive(:com_move).and_return(:scissors)
    expect(page).to have_content "You selected Scissors\nCOM also selected Scissors\nIts a tie!" if game.com_move == :scissors
  end

  scenario 'it has a replay button' do
    sign_in_and_play
    click_button('Scissors')
    expect(page).to have_button("Play Again")
  end
end
