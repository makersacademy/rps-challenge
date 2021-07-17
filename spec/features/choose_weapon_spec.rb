RSpec.feature 'Choose weapon' do
  scenario 'submitting weapon' do
    sign_in_and_play
    expect(page).to have_content 'Choose one of rock, paper or scissors:' 
  end
end
