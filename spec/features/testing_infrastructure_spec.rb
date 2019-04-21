feature 'testing infrastructure' do
  xscenario 'can run app and test page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
