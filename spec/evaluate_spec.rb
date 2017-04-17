require 'evaluate'

describe Evaluate do
  basic_rules = File.expand_path("../../public/logictable_rps.csv", __FILE__)
  advanced_rules = File.expand_path("../../public/logictable_rpsls.csv", __FILE__)
  subject(:evaluate) {described_class.new(LogicItem, basic_rules)}
  let (:test_logic_item) {double :test_logic_item, p1: "Rock", p2: "Paper", result: 1, verb: 'smothered'}
  let(:paper) {"Paper"}
  let(:rock) {"Rock"}
  let(:result) {1}
  let(:verb) {"smothered"}

  it 'has an array to evaluate with 9 items' do
    expect(evaluate.logic_table.length).to eq 9
  end

  it 'has an array containing the test item' do
    evaluate.logic_table << test_logic_item
    expect(evaluate.logic_table).to include test_logic_item
  end

  it 'returns the correct logic result when passed two items' do
    expect(evaluate.get_result(paper, rock)).to eq result
  end

  it 'returns the correct verb when passed two items' do
    expect(evaluate.get_verb(paper, rock)).to eq verb
  end

end
