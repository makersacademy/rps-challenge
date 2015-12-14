require 'spec_helper'

describe 'User Stories' do
  before do
    visit '/'
    fill_in 'name', with: 'Andrew'
    click_button('Submit')
  end

  feature 'Computer can respond' do
    scenario 'computer response is displayed' do
      choose('rock')
      click_button('I have chosen')
      allow(Kernel).to receive(:rand).and_return(0)
      click_button('OK')
      expect(page).to have_content('Computer responds with rock')
    end
  end

  feature 'matches have a result' do
    scenario 'Player can draw computer' do
      choose('rock')
      click_button('I have chosen')
      allow(Kernel).to receive(:rand).and_return(0)
      click_button('OK')
      click_button('Get Result')
      expect(page).to have_content('Draw')
    end
    scenario 'Player can beat computer' do
      choose('paper')
      click_button('I have chosen')
      allow(Kernel).to receive(:rand).and_return(0)
      click_button('OK')
      click_button('Get Result')
      expect(page).to have_content('Andrew wins')
    end
    scenario 'Player can lose against computer' do
      choose('scissors')
      click_button('I have chosen')
      allow(Kernel).to receive(:rand).and_return(0)
      click_button('OK')
      click_button('Get Result')
      expect(page).to have_content('Computer wins')
    end
  end

  feature 'match can be ended' do
    scenario 'click end to return to sign up' do
      choose('scissors')
      click_button('I have chosen')
      allow(Kernel).to receive(:rand).and_return(0)
      click_button('OK')
      click_button('Get Result')
      click_button('End')
      expect(page).to have_content 'Please sign in'
    end
  end



end
