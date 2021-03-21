require 'spec_helper'

feature 'Computer move' do
  scenario 'Computer plays Rock, Paper or Scissors' do
    sign_in_and_start_game
    make_move('Rock')
    # expect(page).to have_content("Deep Thought played")
    expect(page).to have_content(/"Deep Thought played Rock" || "Deep Thought played Paper" || "Deep Thought played Scissors"/)
  end
end
