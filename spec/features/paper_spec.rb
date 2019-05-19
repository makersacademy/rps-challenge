feature 'you pick paper' do
	scenario 'computer picks rock' do
    allow_any_instance_of(Array).to receive(:sample).and_return(1)
    sign_in_and_play
    click_button 'play'
    click_button 'paper'
    expect(page).to have_content 'You picked Paper Computer picked Rock You win!'
    click_button 'play again'
  end
end

feature 'you pick paper' do
	scenario 'computer picks scissors' do
    allow_any_instance_of(Array).to receive(:sample).and_return(2)
    sign_in_and_play
    click_button 'play'
    click_button 'paper'
    expect(page).to have_content 'You picked Paper Computer picked Scissors You lose!'
    click_button 'play again'
  end
end

feature 'you pick paper' do
	scenario 'computer picks paper' do
    allow_any_instance_of(Array).to receive(:sample).and_return(3)
    sign_in_and_play
    click_button 'play'
    click_button 'paper'
    expect(page).to have_content 'You picked Paper Computer picked Paper Draw!'
    click_button 'play again'
  end
end
