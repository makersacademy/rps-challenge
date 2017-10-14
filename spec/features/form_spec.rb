

feature 'Registration' do
  scenario 'Say welcome on registration' do
    sign_in_register
    expect(page).to have_content 'Welcome player !'
  end

  scenario 'once registered name is displayed' do
    sign_in_register
    expect(page).to have_content 'You are now registered as Pablo'
  end

  scenario 'Once registered see the name in light' do
    sign_in_register
    within('.led-yellow') { expect(page).to have_content('Pablo') }
  end

  scenario 'Once registered player is prompted with three options:RPS' do
    sign_in_register
    expect(page).to have_content 'ROCK, PAPER, or SCISSORS?'
  end

  scenario 'when RPS option is clicked, a message displays selected option' do
    sign_in_register
    find('input[value="ROCK"]').click
    expect(page).to have_content 'You have selected ROCK'
  end
end
