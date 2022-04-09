require './app.rb'

feature 'Round result' do
  
  scenario 'Player wins' do
    sign_in_and_play
    choose('Rock')
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    click_button('Submit')
    expect(page).to_have_content('Congratulations Michael, you have won!')
  end

  scenario 'Player draws' do
    sign_in_and_play
    choose('Scissors')
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    click_button('Submit')
    expect(page).to_have_content('Michael, this round is a tie! Try again.')
  end

  scenario 'Player draws' do
    sign_in_and_play
    choose('Paper')
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    click_button('Submit')
    expect(page).to_have_content('Michael, you have lost. Better luck next time!')
  end

end
