require 'computer'

describe Computer do

  subject(:computer) { described_class }

  it {is_expected.to respond_to :weapon}

end
