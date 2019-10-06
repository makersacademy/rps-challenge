feature "Display player selection" do
  scenario "Player 1 result shown" do
    play_single
    choose(option: "Rock")
    click_button('Play')
    expect(page).to have_content "Sid chose Rock"
  end

  scenario "Player 2 result shown" do
    play_single
    choose(option: "Rock")
    allow_any_instance_of(Computer).to receive(:weapon).and_return('Scissors')
    click_button('Play')
    expect(page).to have_content "Computer chose Scissors"
  end
end

feature "Winning sceanrio shown" do
  scenario "Player 1's move wins" do
    play_single
    choose(option: "Rock")
    allow_any_instance_of(Computer).to receive(:weapon).and_return('Scissors')
    click_button('Play')
    expect(page).to have_content "Rock beats Scissors"
    expect(page).to have_content "Sid wins this round"
  end

  scenario "Player 2's move wins" do
    play_single
    choose(option: "Rock")
    allow_any_instance_of(Computer).to receive(:weapon).and_return('Paper')
    click_button('Play')
    expect(page).to have_content "Paper beats Rock"
    expect(page).to have_content "Computer wins this round"
  end

  scenario "It's a draw" do
    play_single
    choose(option: "Rock")
    allow_any_instance_of(Computer).to receive(:weapon).and_return('Rock')
    click_button('Play')
    expect(page).to have_content "Rock cancels out Rock"
    expect(page).to have_content "It's a draw!"
  end
end
