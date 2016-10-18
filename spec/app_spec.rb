require '././app.rb'

describe Rps do

  # describe '/' do
  #   it "let the players enter their name" do
  #     expect(page).to have_text "WALL.E's Rock Paper Scissors"
  #   end
  # end

  describe '/play' do
    it "starts the game" do
      sign_in_and_play
      expect(page).to have_text "Bob is playing against WALL.E"
    end
  end

  # describe '/won_game' do
  #   it "starts the game" do
  #     sign_in_and_play
  #     expect(page).to have_text "Bob has won the game!!!"
  #   end
  # end
end
