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
  scenario 'once you made your move, should show text stating what move the computer made' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    click_button "Scissors"
    # allow(Computer.new).to receive(:rps).and_return "Rock"
    expect(page).to have_content("Computer selected Scissors!")
  end
  scenario 'should see on screen that it is a draw' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    click_button "Paper"
    expect(page).to have_content("That's a draw!") 
  end
  scenario 'should see on screen that the player has won' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    click_button "Paper"
    expect(page).to have_content("You beat the computer amigo!") 
  end
  scenario 'should see on screen that the player has won' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    click_button "Paper"
    expect(page).to have_content("The computer wins amigo!") 
  end
end
