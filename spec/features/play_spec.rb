# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Play the game' do 

  # the marketeer will be presented the choices (rock, paper and scissors)
  scenario 'the user can choose rock, paper, or scissors' do
	sign_in_and_play
	expect(page).to have_button 'Rock'
	expect(page).to have_button 'Paper'
	expect(page).to have_button 'Scissors'
  end

  #the marketeer can choose one option
  scenario 'the user picks one option' do
	sign_in_and_play
	click_button 'Rock'
	expect(page).to have_content 'Player 1 picked Rock'
  end

  #the game will choose a random option
  scenario 'the computer picks an option at random' do
	sign_in_and_play
	allow_any_instance_of(Array).to receive(:sample).and_return(:Scissors)
	click_button 'Rock'	
	expect(page).to have_content 'Computer picked Scissors'
  end

end