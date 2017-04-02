require 'computer'

describe Computer do
  describe '#make_decision' do
    it 'returns rock paper or scissors' do
      allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
      expect(subject.make_decision).to eq "Rock"
    end
  end
end
