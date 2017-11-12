feature 'adds player name' do
  scenario 'adds player name' do
    sign_in_and_play
    expect(page).to have_content 'Andrew vs CPU'
  end

  scenario 'has options for player to choose from' do
    sign_in_and_play
    expect(page).to have_button 'Rock', 'Scissors'
    expect(page).to have_button 'Paper', 'Lizard'
    expect(page).to have_button 'Spock'
  end

  # subject(:game) { double('game') }
  #let(:game) { double('win', outcome: "You win") }
  # scenario 'shows the result that player wins' do
  #   sign_in_and_play
  #   click_on('Rock')
  #   Game.result = "You win"
  #   expect(page).to have_content "You win"
  # end
  #
  # scenario 'shows the result that player loses' do
  #   allow(game.outcome).to receive(:result).and_return "Computer wins"
  #   sign_in_and_play
  #   click_on('Rock')
  #   expect(page).to have_content "Computer wins"
  # end
  #
  # scenario 'shows the result that it is a draw' do
  #   allow(Game.new('player').outcome).to receive(:result).and_return "It's a draw"
  #   sign_in_and_play
  #   click_on('Rock')
  #   expect(page).to have_content "It's a draw"
  # end
end
