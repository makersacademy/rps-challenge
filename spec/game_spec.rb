require 'game'

describe Game do
  subject(:bob) { double :bob }
  subject(:computer) { double :computer, :name => "Computer", :weapon => nil }
  subject(:game) { described_class.new(bob) }

  	describe '#initialize' do

  		it 'with player1' do
  			expect(game.player_1).to eq bob
  		end

      it 'with player2 as comuter' do
  			expect(game.player_2.name).to eq "Computer"
  		end
    end


  end
