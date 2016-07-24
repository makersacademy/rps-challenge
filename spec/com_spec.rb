require 'com'

describe Com do
  let(:subject) {described_class.new}

  describe '#name' do
    it 'knows its name' do
      expect(subject.name).to eq 'Com'
    end
  end
end
