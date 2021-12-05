require 'game_logic'

describe GameLogic do
  let(:gamelogic) { described_class.new(player1,player2) }
  let(:player1) { double(:name => "Titus", :move => "Rock") }
  let(:player2) { double(:name => "Chang", :move => "Scissors") }
  let(:gamelogic2) { described_class.new(player1_lose,player2_win) }
  let(:player1_lose) { double(:name => "Titus", :move => "Rock") }
  let(:player2_win) { double(:name => "Chang", :move => "Paper") }
  let(:gamelogic3) { described_class.new(player_draw,player_draw) }
  let(:player_draw) { double(:name => "n/a", :move => "Rock") }

  context '#change_turn' 
  it 'can increment turn number by 1' do
    expect { gamelogic.change_turn }.to change { gamelogic.turn_number }.by(1)
  end

  context '#current_turn' 
  it "can identify player 1's turn" do
    expect(gamelogic.current_turn).to eq(player1)
  end
  it "can identify player 2's turn" do
    gamelogic.change_turn
    expect(gamelogic.current_turn).to eq(player2)
  end

  context '#reset_moves'
  it "can reset all players' moves" do
    expect(player1).to receive(:reset_move)
    expect(player2).to receive(:reset_move)
    gamelogic.reset_moves
  end

  context '#winner'
  it 'can declare Player 1 to win' do
    expect(gamelogic.winner).to eq("Titus wins")
  end

  it 'can declare Player 2 to win' do
    expect(gamelogic2.winner).to eq("Chang wins")
  end

  it 'can declare a draw' do
    expect(gamelogic3.winner).to eq("It's a draw")
  end

end
