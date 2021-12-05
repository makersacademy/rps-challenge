require 'capybara/rspec'
require_relative '../../app'
Capybara.app = Rps

feature 'choices and submit button' do

    before do
        visit('/play')
    end

    scenario 'has radio button choices' do
        expect(page.has_field?('choice')).to be_truthy
    end

    scenario 'has sumbit button' do
        expect(page.has_button?('Submit')).to be_truthy
    end
end