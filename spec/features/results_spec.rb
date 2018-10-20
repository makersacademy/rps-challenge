feature "results page" do
  before do
    enter_name_and_play
    click_button "ROCK"
  end

  scenario "choosing a weapon should direct to the results page" do
    expect(page).to have_current_path("/results")
  end

  scenario "should confirm weapon choice on results page" do
    expect(page).to have_content("Alice chose ROCK")
  end

  scenario "displaying the winner on the results page" do
    expect(page).to have_content(/Alice wins!|RPSbot wins!|It's a draw!/)
  end
end

feature "displaying correct result" do
  before do
    enter_name_and_play
  end

  scenario "should confirm other player's choice on results page" do
    allow_any_instance_of(Array).to receive(:sample).and_return "ROCK"
    click_button "ROCK"
    expect(page).to have_content "RPSbot chose ROCK"
  end

  scenario "displays correct result when computer chooses rock" do
    allow_any_instance_of(Array).to receive(:sample).and_return "ROCK"
    click_button "ROCK"
    expect(page).to have_content "It's a draw!"
  end

  scenario "displays correct result when computer chooses paper" do
    allow_any_instance_of(Array).to receive(:sample).and_return "PAPER"
    click_button "ROCK"
    expect(page).to have_content "RPSbot wins!"
  end

  scenario "displays correct result when computer chooses scissors" do
    allow_any_instance_of(Array).to receive(:sample).and_return "SCISSORS"
    click_button "ROCK"
    expect(page).to have_content "Alice wins!"
  end
end
