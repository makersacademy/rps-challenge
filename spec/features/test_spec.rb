feature 'test infrastructure' do
  scenario 'is working' do
    visit '/'
    expect(page).to have_content('test infrastructure is working')
  end
end
