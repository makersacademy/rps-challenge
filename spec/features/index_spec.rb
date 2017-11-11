require 'capybara/rspec'
require './spec/features/web_helpers'

Capybara.app = RSPgame

describe 'RSPgame', :type => :feature do

  describe "Index page" do
    feature 'greeting the players' do
      it 'should print Greeting message' do
        visit '/'
        expect(page).to have_content "Hello Marketeers"
      end
    end
    feature ' player submission form' do
      it 'should ask for name submission ' do
        visit '/'
        expect(page).to have_content "Please enter your name"
      end
      it 'should show player1 name' do
        visit '/'
        fill_in :player_name, with: 'name'
        click_button 'Start'
        expect(page).to have_content 'name'
      end
    end
  end
end
