require 'logic_item'

  describe LogicItem do

    let(:paper) {"Paper"}
    let(:rock) {"Rock"}
    let(:result) {1}
    let(:verb) {"smothered"}
    subject(:logic_item) {described_class.new(p1: paper, p2: rock, result: result, verb: verb)}

    it 'has a p1 property' do
      expect(logic_item.p1).to eq paper
    end

    it 'has a p2 property' do
      expect(logic_item.p2).to eq rock
    end

    it 'has a result property' do
      expect(logic_item.result).to eq result
    end

    it 'has a verb property' do
      expect(logic_item.verb).to eq verb
    end

  end
