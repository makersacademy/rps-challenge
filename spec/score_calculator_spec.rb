require 'score_calculator'


describe Score_Calculator do

let(:dummy_class) { Class.new { include Score_Calculator } }

it 'has a method called rank' do
  expect(dummy_class.new).to respond_to(:rank)
end

end