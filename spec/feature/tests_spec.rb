feature 'Testing infrastructure' do
    scenario 'Can run app and check page content' do
      visit('/')
      expect(page).to have_content 'Please enter'
    end

    scenario 'Can run app and check page content' do
      visit ('/')
      click_button ('Submit')
      click_button ('Scissors')
      expect(page).to have_content ''
    end
  end