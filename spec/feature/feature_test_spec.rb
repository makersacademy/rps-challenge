require './app.rb'
require 'spec_helper'

describe MyApp do

  describe 'the homepage', type: :feature do

    it 'should display names entered in a form' do
      visit '/'
      fill_in('Player_1', with: 'Ed')
      fill_in('Player_2', with: 'Mel')
      click_on 'Go!'
      expect(page).to have_content('Ed vs. Mel')
    end

  end

end
