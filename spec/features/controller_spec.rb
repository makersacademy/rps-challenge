feature 'View player_name' do
  scenario 'be able to see player_name' do
    sign_in_and_play
    expect(page).to have_content "Bob vs. Computer"
  end

  scenario 'be able to input rock, paper or scissors' do
    sign_in_and_play
    expect(page).to have_content "Please choose Rock, Paper or Scissors"
    click_button 'Submit'
  end
end

feature 'View player_name input' do
  scenario 'be able to see player_name input' do
    sign_in_and_play
    click_button 'Submit'
    expect(page).to have_content "Bob chose 'rock'"
  end
end

#first show computer choice, then compare

#feature 'Comparison' do
#  scenario 'be able to see player choice compared to computer choice' do
#    sign_in_and_play
#    click_button 'Show results'
#    expect(page).to have_content
#  end
#end