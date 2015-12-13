feature 'play a game' do
  scenario 'asks the player to make their first choice' do
    register_and_play
    expect(page).to have_content('Make your choice')
  end

  context 'offers the player a choice of rock, paper or scissors' do
    scenario 'player chooses rock' do
      register_and_play
      choose("Choose rock")
      click_button 'OK'
      expect(page).to have_content('You chose rock')
    end
  end

end
