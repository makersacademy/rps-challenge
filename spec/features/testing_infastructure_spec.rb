feature 'A page loads' do
  scenario 'the infastructure is working' do
    visit '/infastructure'
    expect(page).to have_content "Testing Infastructure"
  end
end