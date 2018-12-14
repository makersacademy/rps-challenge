require './app.rb'


feature 'Enter names' do
    scenario 'submitting names' do
      visit('/')
      fill_in :name, with: 'Dave'
      click_button 'Submit'
      expect(page).to have_content 'Dave'
    end
  end