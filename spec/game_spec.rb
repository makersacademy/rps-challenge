describe Game do
  subject(:game) {described_class.new(player_1,player2)}
  let(:player1){ double(name: :bob, win_game: nil) }
  let(:player2){ double(name: :bab, win_game: nil) }
  let(:rock) { 'rock' }
  let(:paper){ 'paper' }
  let(:scissors){ 'scissors' }

  before do
    allow(player1).to receive(:play).with(paper)
  end

  it "rock v scissors = draw" do
     allow(player1).to receive(:player_1_win) { true }
     expect(game.player_1_score).to eq 1
   end
  end
