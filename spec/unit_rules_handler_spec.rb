require 'rules_handler.rb'

describe RulesHandler do

  subject(:rules_handler) { described_class }

  describe "#decide_winner" do
    it { is_expected.to respond_to(:decide_winner) }
  end
end
