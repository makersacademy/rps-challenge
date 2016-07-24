feature 'RPS Options' do

  scenario 'choose rock' do
    visit('/play')
    choose('rock')
    click_button 'Submit'
  end

  scenario 'choose paper' do
    visit('/play')
    choose('paper')
    click_button 'Submit'
  end

  scenario 'choose scissors' do
    visit('/play')
    choose('scissors')
    click_button 'Submit'
  end

end
