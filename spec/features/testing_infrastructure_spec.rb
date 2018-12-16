feature 'Checking infrastructure' do
  scenario 'checks the homepage says Hello, are you ready to build RPS game? :-)' do
    visit '/'
    expect(page).to have_content 'Hello, are you ready to build RPS game? :-)'
  end
end
