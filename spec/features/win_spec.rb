require 'spec_helper'

feature 'User wins' do
  scenario "User picks rock and computer picks scissors" do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    click_button('rock')
    expect(page).to have_content("You win!")
  end
  scenario "User picks paper and computer picks rock" do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    click_button('paper')
    expect(page).to have_content("You win!")
  end
  scenario "User picks scissors and computer picks paper" do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    click_button('scissors')
    expect(page).to have_content("You win!")
  end
end
