feature 'testing infrastructure' do
  scenario 'displays testing infrastructure test' do
    visit '/'
    expect(page).to have_content 'Testing infrastructure'
  end
end
