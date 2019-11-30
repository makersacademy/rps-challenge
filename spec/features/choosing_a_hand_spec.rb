RSpec.feature 'choosing a hand', type: :feature do
  before(:each) do
    enter_name_and_play
  end
  
  scenario 'choosing rock' do
    click_on 'ROCK'
    expect(page).to have_content 'Sam played Rock'
  end

  scenario 'choosing paper' do
    click_on 'PAPER'
    expect(page).to have_content 'Sam played Paper'
  end

  scenario 'choosing scissors' do
    click_on 'SCISSORS'
    expect(page).to have_content 'Sam played Scissors'
  end
end
