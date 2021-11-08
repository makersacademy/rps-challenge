feature 'RPS results page' do
  srand(2)

  scenario 'user is informed that they won the game' do
    sign_in_and_play
    click_on('Paper')

    expect(page).to have_content('John wins! Paper beats Rock')
  end

  scenario 'user is informed that they lost the game' do
    sign_in_and_play
    click_on('Spock')
    expect(page).to have_content('John loses! Lizard beats Spock')
  end

end