RSpec.feature 'Choose weapon' do
  scenario 'submitting weapon' do
    sign_in_and_play
    expect(page).to have_content 'First, choose your weapon:' 
  end
end
