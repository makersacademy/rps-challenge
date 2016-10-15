feature 'Preparing to play' do

  scenario 'Ask player to choose rock' do
    visit('/play')
    click_button "Rock"
  end

  scenario 'Ask player to choose paper' do
    visit('/play')
    click_button "Paper"
  end

  scenario 'Ask player to choose scissors' do
    visit('/play')
    click_button "Scissors"
  end

end
