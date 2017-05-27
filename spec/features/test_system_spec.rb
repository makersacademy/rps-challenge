feature 'Test system' do
  scenario 'Test if the system is up and running' do
    visit('/')
    expect(page).to have_content 'RPS!'
  end
end
