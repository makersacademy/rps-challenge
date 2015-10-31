require 'computer'

describe Computer do
  let(:name) {"Computer"}
  subject(:computer) {described_class.new}

  context 'Initialization' do
    it {is_expected.to respond_to(:name)}

    it 'Has a name' do
      expect(computer.name).to eq name
    end
  end

  context 'Storing the players hand' do
    it {is_expected.to respond_to(:set_hand).with(1).argument}
    it {is_expected.to respond_to(:hand)}

    it 'Stores the hand' do
      computer.set_hand
      expect(computer.hand).to satisfy {|hand| Computer::HANDS.include? hand}
    end
  end
end

