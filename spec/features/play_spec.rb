require 'app'

describe RPS do

  before do
    visit '/'
  end

  feature 'Present choices' do
    scenario 'slects rock' do
      click_button 'Rock'
      expect(page).to have_content 'You chose rock'
    end
  end

  feature 'Present choices' do
    scenario 'slects paper' do
      click_button 'Paper'
      expect(page).to have_content 'You chose paper'
    end
  end

  feature 'Present choices' do
    scenario 'slects scissors' do
      click_button 'Scissors'
      expect(page).to have_content 'You chose scissors'
    end
  end

end
