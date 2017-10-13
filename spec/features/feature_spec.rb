feature 'testing infrastructure' do
  scenario 'testing infrastructure is working' do
    visit('/')
    expect(page).to have_content 'testing infrastructure is working'
  end
end