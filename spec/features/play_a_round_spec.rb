
feature 'play a round' do

  scenario 'there are three available choices' do
    sign_in
    expect(page).to have_content('Rock')
    expect(page).to have_content('Paper')
    expect(page).to have_content('Scissors')
  end

  scenario 'can see choice on results page' do
    sign_in_and_play
    expect(page).to have_content('You chose rock')
  end

  scenario 'game chooses a random move' do
    sign_in_and_play
    expect(page).to have_content{"rock" || "paper" || "scissors"}
  end

  scenario 'the winner is decided' do
    sign_in_and_play
    expect(page).to have_content{'I win!' || 'You win!' || 'We draw!'}
  end
end
