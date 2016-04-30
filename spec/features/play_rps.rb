
feature 'play the game of rock paper scissors' do

  scenario 'scissors cut paper' do
    sign_in_and_play
    click_button 'scissors'
    expect(page).to have_content 'You win!'
  end



end