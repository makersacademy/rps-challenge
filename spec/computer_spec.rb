require "computer"

describe Computer do

  subject( :computer ){ described_class.new }

  it "should create random Integer" do
    expect( computer.pick ).to be_kind_of( String )
  end

end
