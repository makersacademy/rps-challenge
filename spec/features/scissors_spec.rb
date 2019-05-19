feature 'you pick scissors' do
	scenario 'computer picks rock' do
    allow_any_instance_of(Array).to receive(:sample).and_return(1)
    sign_in_and_play
    click_button 'play'
    click_button 'scissors'
    expect(page).to have_content 'You picked Scissors Computer picked Rock You lose!'
    click_button 'play again'
  end
end

feature 'you pick scissors' do
	scenario 'computer picks scissors' do
    allow_any_instance_of(Array).to receive(:sample).and_return(2)
    sign_in_and_play
    click_button 'play'
    click_button 'scissors'
    expect(page).to have_content 'You picked Scissors Computer picked Scissors Draw!'
    click_button 'play again'
  end
end

feature 'you pick scissors' do
	scenario 'computer picks paper' do
    allow_any_instance_of(Array).to receive(:sample).and_return(3)
    sign_in_and_play
    click_button 'play'
    click_button 'scissors'
    expect(page).to have_content 'You picked Scissors Computer picked Paper You win!'
    click_button 'play again'
  end
end
