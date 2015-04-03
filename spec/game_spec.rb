describe Game do

  it "takes two arguments on intitialization" do
    expect(described_class).to respond_to(:new).with(2).arguments
  end
end