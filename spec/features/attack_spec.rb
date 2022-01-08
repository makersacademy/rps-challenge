require_relative 'web_helpers'

feature 'Attack' do
  scenario 'choosing attack' do
    sign_in_and_play
    click_on 'Rock'
    expect(page).to have_content 'You chose Rock!!'
  end
end

feature 'Computer attack' do
  scenario 'computer attacks'do
    sign_in_and_play
    click_on 'Rock'
    expect(page).to have_content 'Computer chose Scissors!!'
  end
end