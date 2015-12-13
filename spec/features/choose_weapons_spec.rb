feature 'choose weapons' do
  scenario 'asks the player to make a choice' do
    register_and_play
    expect(page).to have_content('Make your choice')
  end

  context 'allows the player a choice of rock, paper or scissors' do
    scenario 'player chooses rock' do
      register_and_play
      choose("rock")
      click_button 'OK'
      expect(page).to have_content('You chose rock')
    end

    scenario 'player chooses paper' do
      register_and_play
      choose("paper")
      click_button 'OK'
      expect(page).not_to have_content('You chose rock')
      expect(page).to have_content('You chose paper')
    end

    scenario 'player chooses paper' do
      register_and_play
      choose("scissors")
      click_button 'OK'
      expect(page).not_to have_content('You chose rock')
      expect(page).to have_content('You chose scissors')
    end
  end

  context 'allows the computer to choose a weapon at random' do
    scenario 'computer chooses rock' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
      register_and_play
      choose("rock")
      click_button 'OK'
      expect(page).to have_content('The computer chose paper')
    end
  end
end
