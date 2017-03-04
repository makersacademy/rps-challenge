require 'player'

describe Player do

  subject(:player) { described_class.new "Jamie" }

  describe 'name attributes' do
    it 'is initialized with a name which can be called' do
      expect(subject.name). to eq "Jamie"
    end
  end

end
