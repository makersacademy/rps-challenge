feature 'Testing visibility of content on the play page' do
  scenario 'User can see rock button' do
    sign_in
    expect(page).to have_button('Rock')
  end
  scenario 'User can see paper button' do
    sign_in
    expect(page).to have_button('Paper')
  end
  scenario 'User can see scissors button' do
    sign_in
    expect(page).to have_button('Scissors')
  end
end

feature 'Testing routing of buttons on play page' do
  scenario 'User can click on the rock button and see output' do
    sign_in
    click_button "rock"
    expect(page).to have_content("Josh selected Rock")
  end
  scenario 'User can click on the paper button and see output' do
    sign_in
    click_button "paper"
    expect(page).to have_content("Josh selected Paper")
  end
  scenario 'User can click on the scissors button and see output' do
    sign_in
    click_button "scissors"
    expect(page).to have_content("Josh selected Scissors")
  end
end

feature 'Testing the outcome of the game for the player to know if they have won or lost' do
  scenario 'User clicks on the rock button and sees if they have won or lost' do
    sign_in
    click_button "rock"
    expect(page).to have_content("Computer selected Paper: You Lose!", "Computer selected Scissors: You Win!")
  end
  scenario 'User clicks on the paper button and sees if they have won or lost' do
    sign_in
    click_button "paper"
    expect(page).to have_content("Computer selected Rock: You Win!", "Computer selected Scissors: You Lose!")
  end
  scenario 'User clicks on the scissors button and sees if they have won or lost' do
    sign_in
    click_button "scissors"
    expect(page).to have_content("Computer selected Paper: You Win!", "Computer selected Rock: You Lose!")
  end
end
