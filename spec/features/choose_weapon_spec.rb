feature 'Choose weapon' do
  scenario 'User can choose rock' do
    sign_in
    select("Rock", from: 'selection')
    click_button "Let's Play!"
  end
  scenario 'User can choose paper' do
    sign_in
    select("Paper", from: 'selection')
    click_button "Let's Play!"
  end
  scenario 'User can choose scissors' do
    sign_in
    select("Scissors", from: 'selection')
    click_button "Let's Play!"
  end
end