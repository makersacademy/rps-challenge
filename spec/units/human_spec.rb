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
    it 'gives a player a number of losses that defaults to zero' do
      expect(human.losses).to eq 0
    end
    it 'gives a player a number of draws that defaults to zero' do
      expect(human.draws).to eq 0
    end
    it 'gives a player a number of tries that defaults to zero' do
      expect(human.tries).to eq 0
    end
  end
  describe '#update_score' do
    it 'increases the number of wins recorded if passed win' do
      expect { human.update_score 'win' }.to change { human.wins }.by 1
    end
    it 'does not increase the number of wins recorded if passed other outcomes' do
      expect { human.update_score ['lose', 'draw'].sample }.to change { human.wins }.by 0
    end
    it 'increases the number of losses recorded if passed lose' do
      expect { human.update_score 'lose' }.to change { human.losses }.by 1
    end
    it 'does not increase the number of wins recorded if passed other outcomes' do
      expect { human.update_score ['win', 'draw'].sample }.to change { human.losses }.by 0
    end
    it 'increases the number of draws recorded if passed draw' do
      expect { human.update_score 'draw' }.to change { human.draws }.by 1
    end
    it 'does not increase the number of draws recorded if passed other outcomes' do
      expect { human.update_score ['win', 'lose'].sample }.to change { human.draws }.by 0
    end
    it 'increases the number of tries recorded in any case' do
      expect { human.update_score ['win', 'lose', 'draw'].sample }.to change { human.tries }.by 1
    end
  end
end
