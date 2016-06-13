require 'skynet'

describe Skynet do
  subject(:skynet) { described_class.new }

  describe '#tool' do
    it 'picks a random tool' do
      expect(Skynet::TOOLS).to include skynet.tool
    end
  end
end