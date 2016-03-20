RSpec.configure do |c|
  c.filter_run_excluding :broken => true
end

require 'ai'

describe Ai do

  subject(:ai){ described_class.new }
  let(:moves){Constants::MOVES.keys}

  describe '#initialize' do
    it { expect(ai.name).to eq Ai::NAME}
  end

  before do
    srand SEED
    ai.play
  end

  describe '#play' do
    it { expect(ai.move).to eq moves[2] }
    it { ai.play; expect(ai.move).to eq moves[1] }
    it { ai.play; ai.play; expect(ai.move).to eq moves[0] }
    it { ai.play; ai.play; ai.play; expect(ai.move).to eq moves[0] }
    it { expect(ai).to be_played }

  end

end
