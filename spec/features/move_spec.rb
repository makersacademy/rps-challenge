require_relative 'web_helpers'

feature 'move' do
  scenario 'choosing move' do
    sign_in_and_play
    click_on 'Rock'
    expect(page).to have_content 'You chose Rock'
  end
end

feature 'Computer move' do
  scenario 'computer moves' do
    sign_in_and_play
    srand(4)
    click_on 'Rock'
    expect(page).to have_content 'Computer chose Scissors'
  end
end
