feature 'A page loads' do
  scenario 'the infastructure is working' do
    visit '/'
    expect(page).to have_content "Testing Infastructure"
  end
end