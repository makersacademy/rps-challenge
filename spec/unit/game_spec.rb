require './lib/game'

describe Game do

  let(:cam) { Player.new('Cam') }
  let(:computer) { Computer.new }
  let(:game) { Game.new(cam, computer) }
  
  it 'returns player when player chooses rock and computer chooses scissors' do
    srand(4)
    expect(game.rps(cam.choice('Rock'), computer.choice)).to eq cam.name
  end

  it 'returns player when player chooses paper and computer chooses rock' do
    srand(7)
    expect(game.rps(cam.choice('Paper'), computer.choice)).to eq cam.name
  end

  it 'returns player when player chooses scissors and computer chooses paper' do
    srand(1)
    expect(game.rps(cam.choice('Scissors'), computer.choice)).to eq cam.name
  end

  it 'returns tie when player and computer choose the same' do
    srand(7)
    expect(game.rps(cam.choice('Rock'), computer.choice)).to eq "Tie"
  end

  it 'returns computer when computer beats player' do
    srand(4)
    expect(game.rps(cam.choice('Paper'), computer.choice)).to eq "Computer"
  end

end
