feature 'Two Player Mode' do

  scenario 'chooses 2 player mode and enter names' do
    two_player_battle_setup
    expect(page).to have_content 'Sir R Spec vs. Lady Capybara'
  end

  scenario 'player 1 picks their move and switches turns' do
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

  scenario 'player 1 picks their move  and switches turns' do
    two_player_battle_setup
    click_button "Rock"
    expect(page).to have_content 'Lady Capybara, choose your move'
  end

  scenario 'player 2 picks their move, player 2 wins' do
    two_player_battle_setup
    click_button "Rock"
    click_button "Paper"
    expect(page).to have_content "Lady Capybara's Paper defeated Sir R Spec's Rock"
  end

  scenario 'players 1 and 2 pick the same move, resulting in a draw' do
    two_player_battle_setup
    click_button "Rock"
    click_button "Rock"
    expect(page).to have_content "Both of you! Rock is getting a lot of love today"
  end
end
