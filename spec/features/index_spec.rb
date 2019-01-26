require './app'


RSpec.describe Rps do

  feature 'Testing UI form' do
    scenario 'User can enter name' do
      visit('/')
      name = 'name'
      fill_in 'your_name', with: name
      click_button 'Register'
      expect(page).to have_content(name)
    end
  end

end
