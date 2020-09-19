feature 'View player_name' do
  scenario 'be able to see player_name' do
    sign_in_and_play
    expect(page).to have_content "Bob vs. Computer"
  end

  scenario 'be able to input rock, paper or scissors' do
    sign_in_and_play
    expect(page).to have_content "Rock, Paper or Scissors"
    click_button 'Submit'
  end
end

feature 'View player_name input' do
  scenario 'be able to see player_name input' do
    sign_in_and_play
    click_button 'Submit'
    expect(page).to have_content "Bob chose #{@player_choice}"
  end
end
feature 'View computer choice' do
  scenario 'be able to see computer choice and player choice' do
    sign_in_and_play
    click_button 'Submit'
    expect(page).to have_content "Computer chose #{@computer_choice}"
  end
end


#feature 'Comparison' do
#  scenario 'be able to see player choice compared to computer choice' do
#    sign_in_and_play
#    click_button 'Show results'
#    expect(page).to have_content
#  end
#end