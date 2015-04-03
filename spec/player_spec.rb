describe Game do

  it "takes one arguments on intitialization" do
    expect(described_class).to respond_to(:new).with(1).arguments
  end
end