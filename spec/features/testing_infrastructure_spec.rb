require 'app'

feature 'check the homepage' do
  scenario 'says Rock Paper Scissors' do
    visit '/'
    expect(page).to have_content 'Rock Paper Scissors'
  end
end
