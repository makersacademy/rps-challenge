feature 'Two Player Mode' do

  scenario 'chooses 2 player mode and enter names' do
    two_player_battle_setup
    expect(page).to have_content 'Sir R Spec vs. Lady Capybara'
  end

  scenario 'player 1 picks their move' do
    two_player_battle_setup
    click_button "Rock"
    expect(page).to have_content 'Lady Capybara, choose your move'
  end

  scenario 'player 2 picks their move, player 1 wins' do
    two_player_battle_setup
    click_button "Rock"
    click_button "Lizard"
    expect(page).to have_content "Sir R Spec's Rock defeated Lady Capybara's Lizard"
  end
end
