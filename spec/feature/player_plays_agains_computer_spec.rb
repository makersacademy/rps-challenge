feature 'Player plays agains computer' do
  let(:rps) { RPS.new }

  scenario 'player has a name' do
    player1 = Player.new 'Iciar'
    expect(player1.name).to eq 'Iciar'
  end

  scenario 'have 5 weapons' do
    expect(rps.weapons.size).to eq 5
  end

  scenario 'player1 choose weapon' do
    expect(rps.player1_choose('paper')).to eq 'paper'
  end

  scenario 'computer choose weapon' do
    allow(rps).to receive(:computer_choose) { 'Spock' }
    expect(rps.computer_choose).to eq 'Spock'
  end

  scenario 'player1 chooses rock, computer scissors' do
    rps.player1_choose 'rock'
    allow(rps).to receive(:computer_choose) { :scissors }
    expect(rps.winner).to eq "Player wins!"
  end

  scenario 'player1 chooses Spock, computer lizard' do
    rps.player1_choose 'Spock'
    allow(rps).to receive(:computer_choose) { :lizard }
    expect(rps.winner).to eq "Computer wins!"
  end

  scenario 'player1 chooses paper, computer lizard' do
    rps.player1_choose 'paper'
    allow(rps).to receive(:computer_choose) { :lizard }
    expect(rps.winner).to eq "Computer wins!"
  end

  scenario 'player1 chooses lizard, computer scissors' do
    rps.player1_choose 'lizard'
    allow(rps).to receive(:computer_choose) { :scissors }
    expect(rps.winner).to eq "Computer wins!"
  end

  scenario 'player1 chooses scissors, computer Spock' do
    rps.player1_choose 'scissors'
    allow(rps).to receive(:computer_choose) { :Spock }
    expect(rps.winner).to eq "Computer wins!"
  end

  scenario 'player1 chooses the same than computer' do
    rps.player1_choose 'scissors'
    allow(rps).to receive(:computer_choose) { :scissors }
    expect(rps.winner).to eq "Tie!"
  end
end

