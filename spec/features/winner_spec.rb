feature 'Winner is selected' do
  # scenario 'Single player: Computer wins' do
  #   sign_in_and_play
  #   fill_in(:player_1_move, with: 'Paper')
  #   click_button("Play!")
  #   allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
  #   expect(page).to have_content("COMPUTER wins this round!")
  # end

  scenario 'Multiplayer: Winner is selected' do
    multiplay_sign_in_and_play
    fill_in(:player_1_move, with: 'Paper')
    click_button("Next")
    fill_in(:player_2_move, with: 'Rock')
    click_button("Play!")
    expect(page).to have_content("Pamela wins this round!")
  end

  scenario "Multiplayer: It's a tie" do
    multiplay_sign_in_and_play
    fill_in(:player_1_move, with: 'Paper')
    click_button("Next")
    fill_in(:player_2_move, with: 'Paper')
    click_button("Play!")
    expect(page).to have_content("It's a tie")
  end

end

# Best practice - are you meant to stub feature tests?