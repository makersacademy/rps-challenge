feature 'testing integration' do
  scenario 'can integrate MVC components' do
    visit('/test-integration') 
    expect(page).to have_content "Integration successful"
  end
end