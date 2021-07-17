RSpec.feature 'Enter name' do
  scenario 'submitting name' do
    visit '/'
    fill_in :player_name, with: 'Denzel'
    click_button "Submit"
    expect(page).to have_content 'Once again, a huge welcome to RPS, Denzel! You definitely won\'t regret this ...'
  end
end
