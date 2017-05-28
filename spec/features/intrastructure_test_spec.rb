feature 'testing infrastructure' do
  scenario 'can check on rps website and check its content' do
    visit('/')
    expect(page).to have_content('RPS')
  end
end
