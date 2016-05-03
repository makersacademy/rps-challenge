require 'computer'

describe Computer do
  subject(:computer) {described_class.new}

  describe '#choice' do
    it 'selects a random choice' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
      expect(computer.choice).to eq :paper
    end

  describe '#current_choice'
    it 'keeps the curret state stored' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
      computer.choice
      expect(computer.current_choice).to eq :paper
    end

  end

end
