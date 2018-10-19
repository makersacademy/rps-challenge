feature 'Testing RPS' do
  let(:steve) { double :steve }
  let(:computer) { double :computer }

  scenario "should accept a player's name" do
    sign_in_and_play
    expect(page).to have_content "Welcome Steve. Please choose Rock, Paper or Scissors!"
  end
  scenario "should accept a player's current_pick" do
    sign_in_and_play
    click_button('Rock')
    allow(steve).to receive(:pick).with("rock").and_return("rock")
    steve.pick("rock")
    expect(page).to have_content "Result:"
  end
  # scenario "should say if you win" do
  #   computer = double("computer", :current_pick => "scissors")
  #   sign_in_and_play
  #   click_button('Rock')
  #   allow(steve).to receive(:pick).with("rock").and_return("rock")
  #   expect(page).to have_content "Result: You win"
  # end
end
