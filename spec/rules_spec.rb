require 'rules'

describe Rules do 
  let(:text_array) { "text\ntext" }
  subject { described_class.new(text_array) }

  describe '#rules' do
    it 'stores rules' do
      expect(subject.rules).to eq text_array
    end
  end
end
