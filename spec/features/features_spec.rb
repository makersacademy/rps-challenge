feature 'signing in' do
  # As a marketeer
  # So that I can see my name in lights
  # I would like to register my name before playing an online game
  scenario 'user can sign in with their name' do
    register_player1('Philip')
    expect(page).to have_content 'Philip'
  end
end

feature 'playing the game' do
  context 'after registering' do
    before do
      register_player1('Sandra')
    end

    scenario "user can select 'rock'" do
      click_button 'Rock'
      expect(page).to have_content 'You selected rock'
    end

    scenario "user can select 'paper'" do
      click_button 'Paper'
      expect(page).to have_content 'You selected paper'
    end

    scenario "user can select 'scissors'" do
      click_button 'Scissors'
      expect(page).to have_content 'You selected scissors'
    end
  end

  context 'after the user makes a choice' do
    before do
      register_player1('Billy')
    end

    scenario "the computer might choose 'rock'" do
      allow(Kernel).to receive(:rand).and_return(0)
      click_button 'Rock'
      expect(page).to have_content 'The computer selected rock'
    end

    scenario "the computer might choose 'paper'" do
      allow(Kernel).to receive(:rand).and_return(1)
      click_button 'Rock'
      expect(page).to have_content 'The computer selected paper'
    end
  end
end
