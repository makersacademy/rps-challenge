require 'app'

describe RPS do

  before do
    visit '/play'
  end

  feature 'Present choices' do
    scenario 'slects rock' do
      click_on 'rock'
      expect(page).to have_content 'You chose'
    end
  end

  feature 'Present choices' do
    scenario 'slects paper' do
      click_on "paper"
      expect(page).to have_content 'You chose'
    end
  end

  feature 'Present choices' do
    scenario 'slects scissors' do
      click_on "scissors"
      expect(page).to have_content 'You chose'
    end
  end

end
