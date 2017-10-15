feature 'Registration' do
context 'Play versus the computer' do
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
      within('.one_player') { expect(page).to have_content('Pablo') }
    end

    scenario 'Once registered player is prompted with three options:RPS' do
      sign_in_register
      expect(page).to have_content 'ROCK, PAPER, or SCISSORS?'
    end
end

  context 'option two players is selected' do
  scenario 'player selects 2-player option needs to fill out both names' do
    sign_in_register_two
    expect(page).to have_content 'You are now registered as Pablo and Sonia'
  end
end
end
