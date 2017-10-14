require 'human'

describe Human do
  subject(:human) { described_class.new 'Ed' }
  describe '#initialize' do
    it 'gives a player a name' do
      expect(human.name).to eq 'Ed'
    end
    it 'gives a player a number of wins that defaults to zero' do
      expect(human.wins).to eq 0
    end
    it 'gives a player a number of tries that defaults to zero' do
      expect(human.tries).to eq 0
    end
  end
  describe '#update_score' do
    it 'increases the number of wins recorded if passed true' do
      expect { human.update_score true }.to change { human.wins }.by 1
    end
    it 'does not increase the number of wins recorded if passed false' do
      expect { human.update_score false }.to change { human.wins }.by 0
    end
    it 'increases the number of tries recorded if passed true' do
      expect { human.update_score true }.to change { human.tries }.by 1
    end
    it 'increases the number of tries recorded if passed false' do
      expect { human.update_score false }.to change { human.tries }.by 1
    end
  end
end
