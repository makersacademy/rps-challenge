feature 'Enter player name' do
    scenario 'checking that name page is working' do
      visit('/')
      expect(page).to have_content 'Name:'
    end
  end