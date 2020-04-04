RSpec.feature 'choosing a hand', type: :feature do
  before(:each) do
    enter_name_and_play
  end
  
  scenario 'player can choose rock' do
    click_on 'ROCK'

    expect(page).to have_content 'Sam played Rock'
  end

  scenario 'player can choose paper' do
    click_on 'PAPER'

    expect(page).to have_content 'Sam played Paper'
  end

  scenario 'player can choose scissors' do
    click_on 'SCISSORS'

    expect(page).to have_content 'Sam played Scissors'
  end

  scenario 'player can choose lizard' do
    click_on 'LIZARD'

    expect(page).to have_content 'Sam played Lizard'
  end

  scenario 'player can choose spock' do
    click_on 'SPOCK'
    
    expect(page).to have_content 'Sam played Spock'
  end
end
