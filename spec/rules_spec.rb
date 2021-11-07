require 'rules'

describe Rules do

    let(:elementA) { double("elementA", :choice => "Rock", :beats => "Scissors", :loses => "Paper", :ties => "Rock") }
    let(:elementB) { double("elementB", :choice => "Paper", :beats => "Rock", :loses => "Scissors", :ties => "Paper") }
    let(:elementC) { double("elementC", :choice => "Scissors", :beats => "Paper", :loses => "Rock", :ties => "Scissors") }
    let(:new_rules) { Rules.new([elementA, elementB, elementC]) }

    it 'calling elements provides a full list of elements' do
      expect(subject.elements).to eq Rules::DEFAULT_ELEMENTS
    end
end
