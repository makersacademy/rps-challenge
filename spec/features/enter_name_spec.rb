RSpec.feature 'Enter name' do
  scenario 'submitting name' do
    sign_in_and_play
    expect(page).to have_content 'Once again, a huge welcome to RPS, Denzel!'
  end
  scenario 'no regrets' do
    sign_in_and_play
    expect(page).to have_content 'You definitely won\'t regret this ...'
  end
  
end
