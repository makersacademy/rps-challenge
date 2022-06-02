RSpec.describe 'infrastructure' do

  feature 'testing infrastructure' do
    scenario 'can run app and check page content' do
      visit('/test')
      expect(page).to have_content 'Testing infrastructure working!'
    end
  end

end
