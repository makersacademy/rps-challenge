require 'capybara/rspec'


feature 'Enter names' do

  scenario 'submitting names' do
    sign_in
    expect(page).to have_content 'Scott vs computer'
  end
end
