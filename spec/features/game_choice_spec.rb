feature 'Selects Choice' do
  scenario 'rock, paper or scissors' do
    sign_in_and_play
    expect(page).to have_content 'Choose your attack:'
    select 'Rock', from: 'user_choice'
    click_button 'Go'
    expect(page).to have_content 'You chose Rock!'
  end


scenario 'rock, paper or scissors' do
  sign_in_and_play
  expect(page).to have_content 'Choose your attack:'
  select 'Paper', from: 'user_choice'
  click_button 'Go'
  expect(page).to have_content 'You chose Paper!'
end



scenario 'rock, paper or scissors' do
  sign_in_and_play
  expect(page).to have_content 'Choose your attack:'
  select 'Scissors', from: 'user_choice'
  click_button 'Go'
  expect(page).to have_content 'You chose Scissors!'
end

# feature "Selects Choice" do
#  scenario "player chose rock" do
#    sign_in
#    click_rock
#    expect(page).to have_content('result')
#  end
#
#  scenario "player chose paper" do
#    sign_in
#    click_paper
#    expect(page).to have_content('result')
#  end
#
#  scenario "player chose scissor" do
#    sign_in
#    click_scissor
#    expect(page).to have_content('result')
#  end
# end
