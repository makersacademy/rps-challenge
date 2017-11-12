require 'capybara/rspec'
require './spec/features/web_helpers'

Capybara.app = RSPgame

describe 'RSPgame', :type => :feature do

  describe "Play page" do
    feature 'play options' do
      it 'should display option rock message' do
        sign_up_start
        choose_rock
        expect(page).to have_content "You chose rock, now see Computer's choice"
      end
    end
  end
end
