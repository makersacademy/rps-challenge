feature 'start page form' do
    scenario 'onload there should be a form' do
      visit('/')
      expect(page).to have_css('form')
    end
  end