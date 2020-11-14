require_relative "../../app"

describe RPS, type: :feature do

  it "Has greeting message on homescreen" do
    visit '/'
    expect(page).to have_content("Welcome Makers Academy Marketing Array team member")
    expect(page).to have_content("Blow off some steam with classic game of Rock Paper Scissors!!")
    expect(page).to have_content("But first, what name do you go by?")
  end

  it "Welcomes player correctly after filling out name" do
    sign_in_and_play
    expect(page).to have_content("Dumb? That's a funny name.")
  end

  it "States choice correctly" do
    sign_in_and_play
    click_button("scissors")
    expect(page).to have_content("Dumb, you chose scissors.")
  end

  it "Gives correct win message" do
    srand(52)
    sign_in_and_play
    click_button("scissors")
    expect(page).to have_content("Congratulations Dumb you won!")
  end

  it "Correctly tracks score" do
    srand(52)
    sign_in_and_play
    click_button("scissors")
    expect(page).to have_content("Dumb: 1")
  end

  it "Tracks score correctly after several games" do
    srand(52)
    sign_in_and_play
    click_button("scissors")
    click_button("Play again")
    click_button("paper")
    click_button("Play again")
    click_button("rock")
    click_button("Play again")
    click_button("paper")
    click_button("Play again")
    click_button("paper")
    click_button("Play again")
    click_button("scissors")
    click_button("Play again")
    click_button("paper")
    click_button("Play again")
    click_button("rock")
    click_button("Play again")
    click_button("paper")
    click_button("Play again")
    click_button("rock")
    click_button("Play again")
    click_button("paper")
    click_button("Play again")
    click_button("paper")
    click_button("Play again")
    click_button("scissors")
    expect(page).to have_content("Dumb: 5")
    expect(page).to have_content("Computer: 5")
  end

end
