feature 'Testing RPS' do
  let(:steve) { double :steve }
  let(:computer) { double :computer }

  scenario "should accept a player's name" do
    sign_in_and_play
    expect(page).to have_content "Welcome Steve. Please choose Rock, Paper or Scissors!"
  end
  scenario "should accept a player's current_pick as rock" do
    sign_in_and_play
    click_button('Rock')
    allow(steve).to receive(:pick).with("rock").and_return("rock")
    expect(page).to have_content "You picked: rock"
  end
  # scenario "should say if you win" do
  #   sign_in_and_play
  #   allow(computer).to receive(:current_pick).with("scissors").and_return("scissors")
  #   click_button('Rock')
  #   allow(steve).to receive(:pick).with("rock").and_return("rock")
  #   expect(page).to have_content "You picked: rock & Computer picked: scissors. You win"
  # end
end
