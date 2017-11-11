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
      expect(page).to have_button('Rock')
    end
    scenario 'User can choose paper' do
      sign_in_and_play
      expect(page).to have_button('Paper')
    end
    scenario 'User can choose scissor' do
      sign_in_and_play
      expect(page).to have_button('Scissor')
    end
  end

  feature 'clicking options' do
    scenario 'User chooses rock' do
      sign_in_and_play
      click_button('Rock')
      expect(page).to have_text('Rock')
    end
    scenario 'User chooses paper' do
      sign_in_and_play
      click_button('Paper')
      expect(page).to have_text('Paper')
    end
    scenario 'User chooses scissor' do
      sign_in_and_play
      click_button('Scissor')
      expect(page).to have_text('Scissor')
    end
  end
end
