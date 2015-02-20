require './game_item.rb'

  describe GameItems do

    it "should have a rock" do
      item = GameItems.new
      expect(item.rock).to eq "rock"
    end

  end