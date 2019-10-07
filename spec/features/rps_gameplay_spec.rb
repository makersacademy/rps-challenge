
feature "RPS gameplay" do
  scenario "when the player selects rock and opponent selects scissors" do 
    enter_name_and_play
    select 'Rock', from: 'player_hand'
    click_button('Go!')
    expect(page).to have_button('Play again!')
  end

  scenario "when the player selects rock and opponent selects scissors" do 
    enter_name_and_play
    select 'Scissors', from: 'player_hand'
    click_button('Go!')
    expect(page).to have_button('Play again!')
  end

  scenario "when the player selects rock and opponent selects scissors" do 
    enter_name_and_play
    select 'Paper', from: 'player_hand'
    click_button('Go!')
    expect(page).to have_button('Play again!')
  end
end
