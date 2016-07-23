require 'spec_helper'

feature 'User draws' do
  scenario "User and computer both pick rock" do
    sign_in_and_play
     allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    click_button('rock')
    expect(page).to have_content("It's a draw!")
  end
  scenario "User and computer both pick paper" do
    sign_in_and_play
     allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    click_button('paper')
    expect(page).to have_content("It's a draw!")
  end
  scenario "User and computer both pick scissors" do
    sign_in_and_play
     allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    click_button('scissors')
    expect(page).to have_content("It's a draw!")
  end
end
