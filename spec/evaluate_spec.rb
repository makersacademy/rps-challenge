require 'evaluate'

describe Evaluate do

  subject(:evaluate) {described_class.new(LogicItem)}
  let (:test_logic_item) {double :test_logic_item, p1: "Rock", p2: "Paper", result: 1}

  it 'has an array to evaluate with 9 items' do
    expect(evaluate.logic_table.length).to eq 9
  end

  it 'has an array containing the test item' do
    evaluate.logic_table << test_logic_item
    expect(evaluate.logic_table).to include test_logic_item
  end

end
