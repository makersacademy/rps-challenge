require "game"

describe Game do

  describe "New game" do
    let(:user) { double :user, :name => "name" }
    # let(:ai_weapon) { double :ai_weapon => "paper" }
    let(:game) { Game.new(user) }

    it " stores users name" do
      expect(game.instance_variable_get(:@user_hash)).to have_value "name"
    end

    it " stores the AI weapon" do
      expect(game.instance_variable_get(:@ai_hash)).to have_key :ai_weapon

    end

    it " returns the users weapon" do
      expect(game.get_user_weapon).to eq nil
    end

    it " returns the AI weapon" do
      expect(game.get_ai_weapon).to be_an_instance_of(String)
    end

  end


end
