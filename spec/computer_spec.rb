require 'computer'

describe Computer do

  it "responds to the selection method" do
    expect(Computer.new).to respond_to{:selection}
  end

end
