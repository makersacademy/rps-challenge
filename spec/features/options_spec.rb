feature 'Selecting an option' do
  scenario 'Player can select rock' do
    sign_up_and_play
    find_by_id('rock')
  end

  scenario 'Player can select paper' do
    sign_up_and_play
    find_by_id('paper')
  end

  scenario 'Player can select scissors' do
    sign_up_and_play
    find_by_id('scissors')
  end
end
