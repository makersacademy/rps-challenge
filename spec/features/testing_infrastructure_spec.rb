require 'capybara/rspec'
require_relative '../../app'

Capybara.app = RockPaperScissors

  feature 'confirms that the testing infrastructure is working' do
    scenario 'the home page returns a successful status code' do
      visit('/')
      expect(page.status_code).to eq(200)
    end

  end
