feature 'paper' do
  let(:game) { Game.new("John") }
  it 'displays a paper message' do
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content "You selected Paper"
  end

  scenario 'displays a win message' do
    sign_in_and_play
    click_button('Paper')
    allow(game).to receive(:com_move).and_return(:rock)
    expect(page).to have_content "You selected Paper\nCOM selected Rock\nCongratulations John. You won!" if game.com_move == :rock
  end

  scenario 'displays a loss message' do
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content "You selected Paper\nCOM selected Scissors\nYou lose!" if game.com_move == :scissors
  end

  scenario 'displays a draw message' do
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content "You selected Paper\nCOM also selected Paper\nIts a tie!" if game.com_move == :paper
  end

  scenario 'it has a replay button' do
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_button("Play Again")
  end
end