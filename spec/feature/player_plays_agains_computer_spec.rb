feature 'Player plays agains computer' do
  let(:player) { Player.new }
  let(:computer) { Player.new }

  scenario 'player and computer have 5 weapons' do
    any_player = Player.new
    expect(any_player.weapons.size).to eq 5
  end

  xscenario 'player choose weapon' do
    allow(player).to receive(:choose) { 'paper' }
    expect(player.choose).to eq 'paper'
  end

  xscenario 'computer choose weapon'

  xscenario 'player chooses rock, computer scissors'

    # Player wins!

  xscenario 'player chooses Spock, computer lizard'

    # Computer wins!

  xscenario 'player chooses paper, computer lizard'

    # Computer wins!

  xscenario 'player chooses lizard, computer scissors'

    # Computer wins!

  xscenario 'player chooses scissors, computer Spock'

    # Computer wins!

end

