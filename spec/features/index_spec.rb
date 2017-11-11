require 'capybara/rspec'
require './spec/features/web_helpers'

#Capybara.app = RSPgame

describe 'Game', :type => :feature do

  describe "Index page" do
    feature 'greeting the players' do
      it 'should print Greeting message' do
        visit '/'
        expect(page).to have_content "Hello Marketeers"
      end
    end
  end
end
