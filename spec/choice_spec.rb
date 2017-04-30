require 'choice'

describe Choice do

let(:choice) { described_class.new }

  describe '::new' do
    it 'has a list of options' do
      expect(choice.options).to eq described_class::OPTIONS
    end
  end
end
