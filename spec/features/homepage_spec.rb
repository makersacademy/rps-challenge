RSpec.feature 'homepage' do
  scenario 'checking the infrastructure' do
    visit '/'
    expect(page).to have_text("Testing infrastructure working!")
  end
end
