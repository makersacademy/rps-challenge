require './app'

feature 'Configure Player 1' do
  scenario 'Enter and verify name for player 1' do
    sign_in_and_play
    expect(page).to have_content('Jon')
  end
end


feature 'Choose Rock, Paper or Scissors' do
  scenario 'User chooses Rock' do
    sign_in_and_play
    choose('rock')
    click_button('Go!')
    expect(page).to have_content('Rock')
  end
end
