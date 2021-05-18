require 'Select'

RSpec.describe Select do
  subject { described_class.new(name, selection) }
  let (:name) { double :name }
  let (:selection) { double :selection }


  describe '#new' do
    it 'stores user data' do
      expect(subject.name).to eq(name)
      expect(subject.selection).to eq(selection)
    end
  end

end