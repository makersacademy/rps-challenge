require "./rps.rb"

feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/server')
    expect(page).to have_content('Testing infrastructure is up!')
  end

end
