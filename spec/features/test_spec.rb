feature 'test' do
  scenario 'test' do
    visit('/')
    expect(page).to have_content 'RPS'
  end
end