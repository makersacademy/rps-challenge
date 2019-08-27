feature "play Rock Paper Scissors multiplayer" do
  it 'you can start the game' do
    sign_in_and_play_rps("two_player")
    expect(page).to have_content('You are playing Rock Paper Scissors')
  end
  it 'player two can choose attack' do
    sign_in_and_play_rps("two_player")
    click_button(:Rock)
    expect(page).to have_content('Opponent, make your move:')
  end
  it 'player two attack is registered' do
    sign_in_and_play_rps("two_player")
    click_button(:Rock)
    click_button(:Scissors)
    expect(page).to have_content('Opponent chose Scissors')
  end
  context 'results' do
    it 'player 1 can win' do
      sign_in_and_play_rps("two_player")
      click_button(:Rock)
      click_button(:Scissors)
      expect(page).to have_content('Chris wins!')
    end
    it 'player 2 can win' do
      sign_in_and_play_rps("two_player")
      click_button(:Rock)
      click_button(:Paper)
      expect(page).to have_content('Opponent wins!')
    end
    it 'can draw' do
      sign_in_and_play_rps("two_player")
      click_button(:Rock)
      click_button(:Rock)
      expect(page).to have_content('Draw!')
    end
  end
  it 'can play the game again with a different result' do
    sign_in_and_play_rps("two_player")
    click_button(:Rock)
    click_button(:Scissors)
    expect(page).to have_content('Chris chose Rock')
    expect(page).to have_content('Opponent chose Scissors')
    click_button('Play Again')
    click_button(:Paper)
    click_button(:Paper)
    expect(page).to have_content('Chris chose Paper')
    expect(page).to have_content('Opponent chose Paper')
  end
end
