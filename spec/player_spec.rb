require './lib/player'

describe Player do
  subject(:player) { described_class.new('Jon') }
  describe '#initialize' do
    it 'should know the name' do
      expect(player.name).to eq 'Jon'
    end
    
    it 'should have a score of zero' do
      expect(player.score).to be_zero
    end

    it 'should not have a current choice' do
      expect(player.choice).to be_nil
    end
  end

  describe '#choose' do
    context 'valid choices' do
      it 'should accept :rock' do
        player.choose(:rock)
        expect(player.choice).to be :rock
      end

      it 'should accept :paper' do
        player.choose(:paper)
        expect(player.choice).to be :paper
      end

      it 'should accept :scissors' do
        player.choose(:scissors)
        expect(player.choice).to be :scissors
      end
    end

    context 'invalid choice' do
      it 'should not accept :banana' do
        msg = "Invalid choice. Should be one of " +
              "#{Player::CHOICES}"
        expect { player.choose(:banana) }.to raise_error(msg)
      end
    end
  end
end
