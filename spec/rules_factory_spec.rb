require 'rules_factory'

describe RulesFactory do
  let(:text) { "text" }
  let(:file_name) { 'file_name' }
  let(:file_like_object) { double :file_obj }
  let(:rules_hash) { double :rules_hash }
  let(:rules_class) { double :rules_class }
  subject { described_class.new(rules_class) }

  describe '#create_rules' do
    it 'reads a json file, and calls make a rules instance' do
      allow(File).to receive(:read).with(file_name).and_return(file_like_object)
      allow(JSON).to receive(:parse).with(file_like_object, { :symbolize_names => true }).and_return(rules_hash)
      expect(rules_class).to receive(:new).with(rules_hash)
      subject.create_rules(file_name)
    end
  end

end
