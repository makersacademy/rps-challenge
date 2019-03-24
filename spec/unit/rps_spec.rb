require 'rps'
describe RPS do

  subject(:game) { described_class.new(player1, player2) }
  let(:player1) {double :player1, :user_choice => "Rock"}
  let(:player2) {double :player1, :user_choice => "Paper"}

  it 'returns Rock' do
    allow(game).to receive(:rand).and_return(1)
    expect(game.play).to eq 'Rock'
  end

  it 'returns Paper' do
    allow(game).to receive(:rand).and_return(2)
    expect(game.play).to eq 'Paper'
  end

  it 'returns Scissors' do
    allow(game).to receive(:rand).and_return(3)
    expect(game.play).to eq 'Scissors'
  end

  it '#get_turn' do
    expect(game.get_turn).to eq player1
  end
  
  # it '#get_player_choice' do
  #   expect(game.get_player_choice).to eq player1
  # end


end
