# how to stub computer's randomness in these feature tests?

feature 'One-player game' do
  scenario 'Starting a game' do
    visit '/'
    expect(page).to have_content 'Welcome'
    when_I_am_registered
    3.times { i_choose_rock }
    expect(page).to have_content 'Winner is: '
    click_on 'play again?'
    expect(page).to have_content 'Choose your weapon:'
  end
end

private
def when_I_am_registered
    click_on 'Register'
    fill_in 'name_box', with: 'Theo'
    click_on 'play'
end

def i_choose_rock
  expect(page).to have_content 'Choose your weapon:'
  choose 'rock'
  click_on 'Submit'
end
