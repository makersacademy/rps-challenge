feature 'Winning, losing, and drawing' do

  scenario "When you choose rock and the computer chooses scissors, you win" do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    player_vs_computer
    click_button "Rock"
    expect(page).to have_content "You choose: Rock"
    expect(page).to have_content "Computer choose: Scissors"
    expect(page).to have_content "Ben wins!"
  end

  scenario "When both you and the computer choose rock, you draw" do
    allow_any_instance_of(Array).to receive(:sample).and_return('rock')
    player_vs_computer
    click_button "Rock"
    expect(page).to have_content "You choose: Rock"
    expect(page).to have_content "Computer choose: Rock"
    expect(page).to have_content "It's a draw!"
  end

  scenario "When you choose scissors and the computer chooses rock, you lose" do
    allow_any_instance_of(Array).to receive(:sample).and_return('rock')
    player_vs_computer
    click_button "Scissors"
    expect(page).to have_content "You choose: Scissors"
    expect(page).to have_content "Computer choose: Rock"
    expect(page).to have_content "Computer wins!"
  end
end
