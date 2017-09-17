require 'game'

RSpec.describe Game do
  subject(:game) { described_class.new(player_1) }
  let(:computer) { double :computer }
  let(:player) { double :player }

  describe '#result' do
    pending 'returns player 1 as winner if player 1 chooses rock and computer chooses scissors'
    pending 'returns player 2 as winner if player 1 chooses rock and computer chooses paper'
    pending 'returns a draw if player 1 chooses rock and computer chooses rock'
    pending 'returns player 1 as winner if player 1 chooses paper and computer chooses rock'
    pending 'returns player 2 as winner if player 1 chooses paper and computer chooses scissors'
    pending 'returns a draw if player 1 chooses paper and computer chooses paper'
    pending 'returns player 1 as winner if player 1 chooses scissors and computer chooses paper'
    pending 'returns player 2 as winner if player 1 chooses scissors and computer chooses rock'
    pending 'returns a draw if player 1 chooses scissors and computer chooses scissors'

  end

end
