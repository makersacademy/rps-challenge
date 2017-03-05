require 'logic_item'

  describe LogicItem do

    let(:paper) {"Paper"}
    let(:rock) {"Rock"}
    let(:result) {1}

    subject(:logic_item) {described_class.new(p1: paper, p2: rock, result: result)}

    it 'has a p1 property' do
      expect(logic_item.p1).to eq paper
    end

    it 'has a p2 property' do
      expect(logic_item.p2).to eq rock
    end

    it 'has a result property' do
      expect(logic_item.result).to eq result
    end

  end
