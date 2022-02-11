feature "playing a move" do

  before(:each) do
    allow_any_instance_of(BotPlayer).to receive(:weapon).and_return(:rock)
  end

  scenario "the player wins" do
    visit_and_sign_on
    choose('paper')
    click_button('Play')
    expect(page).to have_content "Bob, you played PAPER"
    expect(page).to have_content "Your opponent played ROCK"
    expect(page).to have_content "You win!"
  end

  scenario "the player loses" do
    visit_and_sign_on
    choose('scissors')
    click_button('Play')
    expect(page).to have_content "Bob, you played SCISSORS"
    expect(page).to have_content "Your opponent played ROCK"
    expect(page).to have_content "You lose!"
  end

  scenario "the player draw" do
    visit_and_sign_on
    choose('rock')
    click_button('Play')
    expect(page).to have_content "Bob, you played ROCK"
    expect(page).to have_content "Your opponent played ROCK"
    expect(page).to have_content "You draw!"
  end

end
