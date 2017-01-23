require 'spec_helper'

feature "Win, tie or loose logic" do

  before do
    sign_in_and_play
  end

  scenario "Player selects Rock, Computer selects Paper" do
    allow_any_instance_of(RockPaperScissors).to receive(:rock_paper_scissors){:Paper}
    click_button 'Rock'
    expect(page).to have_content("Computer wins :(")
  end
  scenario "Player selects Rock, Computer selects Scissors" do
    allow_any_instance_of(RockPaperScissors).to receive(:rock_paper_scissors){:Scissors}
    click_button 'Rock'
    expect(page).to have_content("You win :)")
  end
  scenario "Player selects Rock, Computer selects Rock" do
    allow_any_instance_of(RockPaperScissors).to receive(:rock_paper_scissors){:Rock}
    click_button 'Rock'
    expect(page).to have_content("Tie!")
  end
  scenario "Player selects Paper, Computer selects Paper" do
    allow_any_instance_of(RockPaperScissors).to receive(:rock_paper_scissors){:Paper}
    click_button 'Paper'
    expect(page).to have_content("Tie!")
  end
  scenario "Player selects Paper, Computer selects Rock" do
    allow_any_instance_of(RockPaperScissors).to receive(:rock_paper_scissors){:Rock}
    click_button 'Paper'
    expect(page).to have_content("You win :)")
  end
  scenario "Player selects Paper, Computer selects Scissors" do
    allow_any_instance_of(RockPaperScissors).to receive(:rock_paper_scissors){:Scissors}
    click_button 'Paper'
    expect(page).to have_content("Computer wins :(")
  end
  scenario "Player selects Scissors, Computer selects Scissors" do
    allow_any_instance_of(RockPaperScissors).to receive(:rock_paper_scissors){:Scissors}
    click_button 'Scissors'
    expect(page).to have_content("Tie!")
  end
  scenario "Player selects Scissors, Computer selects Paper" do
    allow_any_instance_of(RockPaperScissors).to receive(:rock_paper_scissors){:Paper}
    click_button 'Scissors'
    expect(page).to have_content("You win :)")
  end
  scenario "Player selects Scissors, Computer selects Rock" do
    allow_any_instance_of(RockPaperScissors).to receive(:rock_paper_scissors){:Rock}
    click_button 'Scissors'
    expect(page).to have_content("Computer wins :(")
  end
end
