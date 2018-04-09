feature 'Play' do
  scenario 'Can select rock' do
    sign_in_and_play
    fill_in 'choice', with: 'rock'
    click_button 'Go!'
    expect(page).to have_content 'You selected Rock'
  end
  scenario 'Can select paper' do
    sign_in_and_play
    fill_in 'choice', with: 'paper'
    click_button 'Go!'
    expect(page).to have_content 'You selected Paper'
  end
  scenario 'Can select scissors' do
    sign_in_and_play
    fill_in 'choice', with: 'scissors'
    click_button 'Go!'
    expect(page).to have_content 'You selected Scissors'
  end
  scenario 'Can\'t make an invalid selection' do
    sign_in_and_play
    fill_in 'choice', with: 'apple'
    click_button 'Go!'
    expect(page).to have_content 'You\'ve made an invalid selection, please choose again'
  end
end
