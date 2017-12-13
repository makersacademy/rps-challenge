describe Rps, :type => :feature do

  feature 'sign in' do
    scenario 'User can sign in' do
      sign_in_and_play
      expect(page).to have_text('Flooba')
    end
  end

  feature 'play options' do
    scenario 'User can choose rock' do
      sign_in_and_play
      expect(page).to have_button('rock')
    end
    scenario 'User can choose paper' do
      sign_in_and_play
      expect(page).to have_button('paper')
    end
    scenario 'User can choose scissor' do
      sign_in_and_play
      expect(page).to have_button('scissor')
    end
  end

  feature 'clicking options' do
    scenario 'User chooses rock' do
      sign_in_and_play
      click_button('rock')
      expect(page).to have_text('rock')
    end
    scenario 'User chooses paper' do
      sign_in_and_play
      click_button('paper')
      expect(page).to have_text('paper')
    end
    scenario 'User chooses scissor' do
      sign_in_and_play
      click_button('scissor')
      expect(page).to have_text('scissor')
    end
  end
end
