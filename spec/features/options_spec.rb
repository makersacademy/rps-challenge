feature 'Selecting an option' do
  scenario 'Player can select rock' do
    sign_up_and_play
    find_field('rock').value
  end

  scenario 'Player can select paper' do
    sign_up_and_play
    find_field('paper').value
  end

  scenario 'Player can select scissors' do
    sign_up_and_play
    find_field('scissors').value
  end
end
