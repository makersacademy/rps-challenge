describe Computer do
  let(:computer) { Computer.new }

  describe "new" do
    it "responds to new" do
      expect(Computer).to respond_to(:new)
    end
  end
end
