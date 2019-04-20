

RSpec.feature 'checking setup' do
  scenario 'when on page' do
    visit('/')
    expect(page).to have_content('RPS')
  end
end
