feature 'play a game' do
  scenario 'asks the player to make a choice' do
    register_and_play
    expect(page).to have_content('Make your choice')
  end

  context 'allows the player a choice of rock, paper or scissors' do
    scenario 'player chooses rock' do
      register_and_play
      choose("Choose rock")
      click_button 'OK'
      expect(page).to have_content('You chose rock')
    end

    scenario 'player chooses paper' do
      register_and_play
      choose("Choose paper")
      click_button 'OK'
      expect(page).not_to have_content('You chose rock')
      expect(page).to have_content('You chose paper')
    end
  end

  context 'allows the computer to choose a weapon at random' do
    scenario 'computer chooses rock' do
      register_and_play
      choose("Choose rock")
      click_button 'OK'
      expect(page).to have_content('The computer chose paper')
    end
  end

end
