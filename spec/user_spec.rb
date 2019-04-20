require 'user'

describe User do

  let(:user) { User.set("guiheurich@gmail.com", "guilhe0756") }

  describe '#get' do
    it "creates a new user_id for a user" do
      expect(User.get).to eq({ "guiheurich@gmail.com" => "guilhe0756" })
    end
  end

  describe '#choice' do #there is something weird happening here... ask a coach
    it "adds a choice to a history of choices" do
      User.set_choice("paper")
      expect(User.get_choice).to eq ["paper"]
    end

  end
end
