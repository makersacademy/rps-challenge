describe Game do
  subject(:game) {described_class.new(player_1,player2)}
  let(:player_1) { instance_double("Player") }
  let(:player_1) { instance_double("Player") }
  let(:weapon) { 'paper' }
  before do
    allow(player_1).to receive(:play).with(paper)
  end
end
