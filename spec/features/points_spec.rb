require 'spec_helper'

feature "Initial Points" do
  before do
    sign_in_and_play
  end
  scenario "computer initializes with default wins" do
    expect(page).to have_content("The computer has 0 wins")
  end

  scenario "player initializes with default wins" do
    expect(page).to have_content("Player has 0 wins")
  end
end

feature "Winning points" do

  before do
    sign_in_and_play
  end

  scenario "computer wins" do
    allow_any_instance_of(RockPaperScissors).to receive(:rock_paper_scissors){:Paper}
    click_button 'Rock'
    click_button 'Replay'
    expect(page).to have_content("The computer has 1 wins")
  end

  scenario "player wins" do
    allow_any_instance_of(RockPaperScissors).to receive(:rock_paper_scissors){:Paper}
    click_button 'Scissors'
    click_button 'Replay'
    expect(page).to have_content("Player has 1 wins")
  end

  scenario "tie" do
    allow_any_instance_of(RockPaperScissors).to receive(:rock_paper_scissors){:Paper}
    click_button 'Paper'
    click_button 'Replay'
    expect(page).to have_content("Player has 0 wins")
    expect(page).to have_content("The computer has 0 wins")
  end
end
