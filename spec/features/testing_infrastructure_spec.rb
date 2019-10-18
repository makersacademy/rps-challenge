feature 'Testing' do
  scenario 'check page content' do
    visit('/')
    expect(page).to have_content 'Test!'
  end
end
