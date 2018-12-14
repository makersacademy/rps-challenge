require_relative '../../rps_app'
 feature 'Test' do
  scenario 'check testing infrastructure working' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
