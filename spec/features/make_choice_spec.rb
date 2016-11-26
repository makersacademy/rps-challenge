
feature 'make a choice' do

  scenario 'choose rock' do
    sign_in_and_play
    click_button 'ROCK'
    expect(page).to have_content 'You chose rock'
  end

  scenario 'choose paper' do
    sign_in_and_play
    click_button 'PAPER'
    expect(page).to have_content 'You chose paper'
  end

  scenario 'choose scissors' do
    sign_in_and_play
    click_button 'SCISSORS'
    expect(page).to have_content 'You chose scissors'
  end

end
