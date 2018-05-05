require_relative '../../app.rb'

feature RPS do

  feature 'Initial set up' do
    scenario 'Testing infrastructure' do
      visit('/')
      expect(page).to have_content "Testing infrastructure working!"
    end
  end

end
