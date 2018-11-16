describe Robot do
  context '#move' do
    it "returns a value from the array passed" do
      expect(Robot.move(["Bacon"])).to eq "Bacon"
    end
  end
end
