feature 'Players can play multiple rounds' do
  scenario 'Player can select to play another round' do
    multi_player_names_and_confirm
    multi_player_pick_weapons_and_confirm('Rock', "Paper")
    expect(page).to have_selector(:link, 'Click for another round')
  end
  scenario 'Player should have confirmation of round number' do
    multi_player_names_and_confirm
    multi_player_pick_weapons_and_confirm('Rock', "Paper")
    click_link 'Click for another round'
    expect(page).to have_content "Round 2"
  end
  scenario 'Running total of wins and losses should be displayed - player 1 wins' do
    multi_player_names_and_confirm
    multi_player_pick_weapons_and_confirm("Paper", "Rock")
    click_link 'Click for another round'
    multi_player_pick_weapons_and_confirm("Paper", "Rock")
    click_link 'Click for another round'
    multi_player_pick_weapons_and_confirm("Paper", "Rock")
    expect(page).to have_content "Leigh-ann - 3 wins"
    expect(page).to have_content "Andy - 0 wins"
  end
  scenario 'Running total of wins and losses should be displayed - mixed wins' do
    multi_player_names_and_confirm
    multi_player_pick_weapons_and_confirm('Rock', "Paper")
    click_link 'Click for another round'
    multi_player_pick_weapons_and_confirm('Paper', "Rock")
    click_link 'Click for another round'
    multi_player_pick_weapons_and_confirm('Paper', "Rock")
    expect(page).to have_content "Leigh-ann - 2 wins"
    expect(page).to have_content "Andy - 1 wins"
  end
end
