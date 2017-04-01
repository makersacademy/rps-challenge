require_relative '../../app.rb'

  feature 'testing infrastructure' do

    scenario 'welcomes user to application on homepage' do
      visit '/'
      expect(page).to have_content("Welcome to RockPaperScissors")
    end
  end
