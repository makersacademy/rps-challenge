require 'rps'
describe RPS do

  let(:player1) { double :player1 }
  let(:player2) { double :computer, :name => 'Computer' }
  let(:game_type) { :normal }
  let(:game_options) { double :game_options, :normal_game => { 1 => "Rock", 2 => "Paper", 3 => "Scissors" } }
  subject(:game) { described_class.new(player1, player2, game_type, game_options) }
  
  it '#retrieve_turn ' do
    expect(game.retrieve_turn).to eq player1
  end

  it '#changes_turns' do
    expect(game.change_turn).to eq [player2, player1]
  end

  it "#checks if it is the computer's turn" do
    
    game.change_turn
    expect(game.computer_turn?).to be true
  end

  it '#retrieve_round' do
    expect(game.retrieve_round).to eq 1
  end

  it '#completed run' do
    allow(player1).to receive(:assigned_choice?).and_return true
    allow(player2).to receive(:assigned_choice?).and_return true
    expect(game.completed_run).to eq [player1, player2]
  end

  it '#resets_game' do
    allow(player1).to receive(:reset)
    allow(player2).to receive(:reset)
    expect(game).to respond_to(:reset_game)
  end

  it '#exit' do
    allow(player1).to receive(:exit)
    allow(player2).to receive(:exit)
    expect(game).to respond_to(:exit)
  end
  
end
