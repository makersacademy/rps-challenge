require 'comp'

describe Comp do

  describe '#make_choice' do
    it { is_expected.to respond_to(:make_choice)}

    it "returns computer choice as rock" do
      comp_choice = subject.make_choice
      expect(['Rock', 'Paper', 'Scissors']).to include(comp_choice)
    end
  end
end