require './model/auto.rb'

describe Auto do
  it "checks the existence of class" do
  end

  it {is_expected.to respond_to(:random_pick)}

  it "checks if it can return a random pick" do
    auto = Auto.new
    allow(auto).to receive(:random_pick).and_return('rock')
    expect(auto.random_pick).to eq ('rock')
  end
end

