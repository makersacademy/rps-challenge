describe 'RPS', :type => :feature do

feature 'Testing infrastructure' do
  scenario 'Page context exist if RPS runs' do
    visit'/'
    expect(page).to have_content 'Welcome To Rock, Paper and Scissors!'
  end
end

feature 'There should be an input feature' do
  scenario 'Player is able to type name' do
  visit '/'
  expect(page).to have_selector("input")
end
end

feature 'User can register name' do
  scenario 'Player is able to submit name' do
  sign_in
  expect(page).to have_content 'Welcome Dania Are you ready to rumble?'
  end
end



end
