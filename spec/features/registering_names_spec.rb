feature 'registering name' do
    scenario 'takes name and see my name' do
      visit('/')
      fill_in 'name', with: 'Dave'
      click_button 'Submit'
      expect(page).to have_content 'Dave'
    end
  end