require "./lib/random_picker"

shared_examples_for RandomPicker do 

  subject(:picker) { described_class.new }

  describe "#random_choice" do
    it "will randomly pick a weapon" do
      srand(2000)
      expect(picker.random_choice).to eq("Scissors")
    end
  end

end
