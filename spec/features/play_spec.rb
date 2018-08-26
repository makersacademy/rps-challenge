require 'computer'

feature 'Move entry' do
  it 'allows user to enter a move, which is stored' do
    enter_name_and_click
    click_button "Rock"
    expect(page).to have_content "Bob's move: Rock"
  end
end

feature 'Random computer move' do
  it 'will receive a move from the computer' do
    allow_any_instance_of(Game).to receive(:comp_move).and_return("Rock")
    enter_name_and_click
    click_button "Rock"
    expect(page).to have_content "Computer's move: Rock"
    expect(page).to have_content "Draw"
  end
end
feature 'Display winner' do
  scenario 'computer plays Paper' do
    allow_any_instance_of(Game).to receive(:comp_move).and_return("Paper")
    enter_name_and_click
    click_button "Rock"
    expect(page).to have_content "Computer wins!"
  end
  scenario 'computer plays Scissors' do
    allow_any_instance_of(Game).to receive(:comp_move).and_return("Scissors")
    enter_name_and_click
    click_button "Rock"
    expect(page).to have_content "Bob wins!"
  end
  it 'displays the reason for winning' do
    enter_two_names_and_click_with_extended
    click_button "Spock"
    click_button "Lizard"
    expect(page).to have_content "Lizard poisons Spock!"
  end
end
feature 'Replay button' do
  before {
    allow_any_instance_of(Game).to receive(:comp_move).and_return("Scissors")
    enter_name_and_click
    click_button "Rock"
  }
  it 'lets you click a button to return to move select' do
    expect(page).to have_button "Replay"
  end
  it 'goes back to the play page' do
    click_button "Replay"
    expect(page).to have_content "Name: Bob"
  end
  it 'will receive a new move from the computer' do
    allow_any_instance_of(Game).to receive(:comp_move).and_return("Rock")
    click_button "Replay"
    click_button "Paper"
    expect(page).to have_content "Computer's move: Rock"
  end
end

feature 'Two player mode' do
  before { enter_two_names_and_click }
  it 'shows players and moves one at a time' do
    expect(page).to have_content "Name: Bob"
    click_button "Rock"
    expect(page).to have_content "Name: Jim"
  end

  it 'allows you to replay the game' do
    click_button "Rock"
    click_button "Rock"
    click_button "Replay"
    click_button "Scissors"
    click_button "Scissors"
    expect(page).to have_content "Draw"
  end
end
