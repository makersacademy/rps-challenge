require 'computer'

describe Computer do
  
  describe '#name' do
    it 'has a default name' do
      expect(subject.name).to eq "Bot"
    end
  end

  describe '#shape' do
    it 'can choose rock' do
      allow_any_instance_of(Array).to receive(:sample).and_return("Rock")
      expect(subject.bot_shape).to eq "Rock"
    end

    it 'can choose paper' do
      allow_any_instance_of(Array).to receive(:sample).and_return("Paper")
      expect(subject.bot_shape).to eq "Paper"
    end

    it 'can choose scissors' do
      allow_any_instance_of(Array).to receive(:sample).and_return("Scissors")
      expect(subject.bot_shape).to eq "Scissors"
    end
  end
end
