require 'game'

RSpec.describe Game do

  let(:billy) do
    double :Player,
    name: 'Billy',
    move: 'Rock',
    choose_move: 'Rock'
  end

  let(:rpslsbot) do
    double :RandomPlayer,
    name: 'RPSLSbot',
    move: 'Scissors'
  end

  let(:fakevg) do
    double :VictoryGenerator,
    winner: billy,
    victory_type: 'crushes'
  end

  subject do
    described_class.new(billy, player2: rpslsbot, victory_generator: fakevg)
  end

  it 'returns the players names when asked' do
    expect(subject.player_names).to eq ['Billy', 'RPSLSbot']
  end

  it 'stores the possible moves' do
    all_moves = ['Rock', 'Paper', 'Scissors', 'Lizard', 'Spock']
    expect(described_class::POSSIBLE_MOVES).to eq all_moves
  end

  it 'lets players choose moves' do
    expect(subject.choose_move(0, 'Rock')).to eq 'Rock'
  end

  it 'knows who has won the game' do
    expect(subject.winner).to eq 0
  end

  it 'returns the victory type when asked' do
    expect(subject.victory_type).to eq 'crushes'
  end

  it 'raises an error when checking the winner if the game is not over' do
    allow(rpslsbot).to receive(:move).and_return(nil)
    expect { subject.winner }.to raise_error 'Game is not yet over'
  end

  it 'raises an error when checking the victory type if the game is not over' do
    allow(rpslsbot).to receive(:move).and_return(nil)
    expect { subject.victory_type }.to raise_error 'Game is not yet over'
  end
end
