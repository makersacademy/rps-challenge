require '~/Documents/Coding/MA/weekend_challenges/rps-challenge/rps_app.rb'

describe RPS do
  feature 'Enter names' do
    scenario 'submitting names' do
      visit('/')
      fill_in 'p1_name', with: 'Jules'
      fill_in 'p2_name', with: 'Lee'
      click_on 'Submit Names'
      expect(page).to have_content 'Jules vs. Lee'
    end
  end
end
