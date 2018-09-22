require './app'

describe Player do

  feature 'Testing framework' do
    scenario 'Testing' do
      visit('/')
      expect(page).to have_content('Hi')
    end
  end

  feature 'Player name' do
    scenario 'entering the name' do
      visit('/')
      fill_in :name, with: "Daniel"
      click_button "Submit"
      expect(page).to have_content('Welcome, Daniel')
    end
  end
end
