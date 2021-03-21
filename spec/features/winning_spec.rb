require 'spec_helper'

feature 'Announcing Winner' do
  scenario "Player plays rock against computer's rock" do
    srand(100)
    sign_in_and_start_game
    make_move('rock')
    expect(page).to have_content("It's a draw!")
  end

  scenario "Player plays rock against computer's paper" do
    srand(99)
    sign_in_and_start_game
    make_move('rock')
    expect(page).to have_content("Deep Thought wins!")
  end

  scenario "Player plays rock against computer's scissors" do
    srand(98)
    sign_in_and_start_game
    make_move('rock')
    expect(page).to have_content("Zaphod wins!")
  end
end
