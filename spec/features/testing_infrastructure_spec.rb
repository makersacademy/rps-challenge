feature 'Testing infrastructure' do
  xscenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Hello world!'
  end
end
