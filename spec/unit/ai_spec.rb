describe Ai do
  describe 'randomiser' do
    it 'picks a choice at random' do
      allow_any_instance_of(Array).to receive(:sample) { :rock }
      expect(subject.randomiser).to be :rock
    end
  end
end
