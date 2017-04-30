require 'ai_player'

describe AiPlayer do
  subject(:ai_player) { described_class.new }
  it { is_expected.to respond_to(:choice) }
end
