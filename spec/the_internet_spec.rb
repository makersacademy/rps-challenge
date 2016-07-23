require_relative '.././lib/the_internet'

describe TheInternet do

  it "has a choice that can be read" do
    expect(subject.internet_choice).to_not be nil?
  end

end
