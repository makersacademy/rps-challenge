require 'choice_reader'

describe ChoiceReader do
  let(:rock) { double :rock }
  let(:moves) { [rock] }
  let(:hash_object) { { "rock": { "win": ["scissors", "lizard"], "img": "./img/rock.png" } } }
  let(:file_like_object) { double :file_obj }
  let(:file_name) { 'file_name' }
  let(:move_class) { double :move_class }
  let(:choice_obj) { double :choice_obj, choices: [rock] }
  let(:choice_class) { double :choice_class, new: choice_obj }

  subject { described_class.new(choice_class) }

  describe '#create_choice' do
    it 'reads a json file, and calls make move objects' do
      allow(File).to receive(:read).with(file_name).and_return(file_like_object)
      allow(JSON).to receive(:parse).with(file_like_object).and_return(hash_object)
      expect(subject).to receive(:make_move_objects).with(hash_object)
      subject.create_choice(file_name)
    end
  end

  describe '#make_move_objects' do
    it 'creates move objects' do
      expect(choice_class).to receive(:new)
      subject.make_move_objects(hash_object)
    end
  end
end
