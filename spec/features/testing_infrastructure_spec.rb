require_relative '../../app.rb'

  feature 'testing infrastructure' do

    scenario 'welcomes user to application on homepage' do
      visit '/'
      expect(page).to have_content("Welcome to RockPaperScissors")
    end

    scenario 'player enters name and sees it displayed on page' do
      sign_in
      expect(page).to have_content("A new challenger appears! Alex, step forth!")
    end
  end
