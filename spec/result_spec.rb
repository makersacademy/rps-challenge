require 'result'

describe Result do
  subject(:result) { described_class.new(player, computer) }
  let(:computer) { double :computer }
  let(:player) { double :player }

  # describe '#winner' do
  #   it 'determines the winner of the game' do
  #     allow(computer).to receive(:random_choice).and_return("paper")
  #     allow(player).to receive(:choice).and_return("paper")
  #     expect(result.win?).to be true
  #   end
  # end
end
