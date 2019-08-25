feature "play Rock Paper Scissors" do
  it 'you can start the game' do
    sign_in_and_play_rps("one_player")
    expect(page).to have_content('You are playing Rock Paper Scissors')
  end
  context 'choose attack' do
    it 'can select Rock' do
      sign_in_and_play_rps("one_player")
      click_button(:Rock)
      expect(page).to have_content('You chose Rock')
    end
    it 'can select Paper' do
      sign_in_and_play_rps("one_player")
      click_button(:Paper)
      expect(page).to have_content('You chose Paper')
    end
    it 'can select Scissors' do
      sign_in_and_play_rps("one_player")
      click_button(:Scissors)
      expect(page).to have_content('You chose Scissors')
    end
  end
  context 'results' do
    it 'user can win' do
      sign_in_and_play_rps("one_player")
      allow_any_instance_of(Array).to receive(:sample).and_return("Scissors")
      click_button(:Rock)
      expect(page).to have_content('You won!')
    end
    it 'computer can win' do
      sign_in_and_play_rps("one_player")
      allow_any_instance_of(Array).to receive(:sample).and_return("Paper")
      click_button(:Rock)
      expect(page).to have_content('You lost!')
    end
    it 'can draw' do
      sign_in_and_play_rps("one_player")
      allow_any_instance_of(Array).to receive(:sample).and_return("Rock")
      click_button(:Rock)
      expect(page).to have_content('Draw!')
    end
  end
  it 'can play the game again with a different result' do
    sign_in_and_play_rps("one_player")
    allow_any_instance_of(Array).to receive(:sample).and_return("Scissors")
    click_button(:Rock)
    expect(page).to have_content('You chose Rock')
    expect(page).to have_content('Computer chose Scissors')
    click_button('Play Again')
    allow_any_instance_of(Array).to receive(:sample).and_return("Paper")
    click_button(:Paper)
    expect(page).to have_content('You chose Paper')
    expect(page).to have_content('Computer chose Paper')
  end
end
