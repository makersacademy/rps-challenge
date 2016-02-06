require 'pc_player'

describe PCPlayer do

  it{is_expected.to respond_to(:generate_choice)}
  it{is_expected.to respond_to(:choice)}

end
