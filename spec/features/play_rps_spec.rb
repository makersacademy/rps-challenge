
feature 'play rps' do
  before do 
    sign_in_and_play
  end
  scenario 'visit page, enter name, see 3 buttons for rock paper and scissors on screen' do
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end
  scenario 'dont get told you have made a move without doing so' do
    expect(page).not_to have_content("You selected Rock!")
    expect(page).not_to have_content("You selected Paper!")
    expect(page).not_to have_content("You selected Scissors!")
  end
  scenario 'click one of 3 buttons and see text stating what selection you made' do
    click_button "Rock"
    expect(page).to have_content("You selected Rock!")
  end
  scenario 'click one of 3 buttons and see text stating what selection you made' do
    click_button "Paper"
    expect(page).to have_content("You selected Paper!")
  end
  scenario 'click one of 3 buttons and see text stating what selection you made' do
    click_button "Scissors"
    expect(page).to have_content("You selected Scissors!")
  end
  # scenario 'once you made your move, should show text stating what move the computer made' do
  #   click_button "Scissors"
  #   expect(computer).to receive(:rps).and_return "Rock"
  #   expect(page).to have_content("Computer selected Rock!")
  # end
  # how can i stub out this randomness. can I mix capybara and unit tests for my computer class as i have tried to above?
  # also need a test to make sure before a user makes their first move of the session, the screen does not show the computer 
  # as having made a move. 
end
