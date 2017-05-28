feature 'enter guess' do
  scenario 'either Rock, Paper or Scissors' do
    visit('/')
    fill_in('player1', with: 'Ian')
    click_button('Paper') || click_button('Rock') || click_button('Scissors')
  end
end
