require "random_number"

describe RandomNumber do

  subject( :random_number ){ described_class.new }

  it "should create random Integer" do
    expect( random_number.generator ).to be_kind_of( Integer )
  end

end
