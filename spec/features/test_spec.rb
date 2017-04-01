require_relative '../../app'

feature 'test infrastructure working' do
  scenario 'site has content' do
    visit '/'
    expect(page).to have_content('Testing infrastructure working')
  end
end
