feature 'Play game' do
  let(:game) {double(:game, player1: (double :player1), player2: (double :player2))}
  scenario 'Play game against computer and view winner' do
    one_player_mode
    allow(Kernel).to receive(:rand).and_return(0)
    choose('rock1')
    click_button('Reveal winner')
    expect(page).to have_content 'Player 1 won! rock beats scissors'
  end

  scenario 'Play game against another player and view winner' do
    two_players_mode
    choose('scissors1')
    choose('paper2')
    click_button('Reveal winner')
    expect(page).to have_content 'Player 1 won! scissors beats paper'
  end
end
