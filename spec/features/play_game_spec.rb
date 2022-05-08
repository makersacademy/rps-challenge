require 'capybara/rspec'
require_relative '../../app'

Capybara.app = RockPaperScissors

feature 'allows player to play a game of RockPaperScissors' do
  scenario 'the player can choose from three buttons' do
    sign_in_and_play
    expect(page).to have_xpath('/html/body/form[1]/input[1]')
    expect(page).to have_xpath('/html/body/form[2]/input[1]')
    expect(page).to have_xpath('/html/body/div/form/input[1]')
  end
  #the above is a workaround because I can't seem to check for a link
  #in the same way I was able to check for a button before I turned them
  #into images... not sure how good it is though because you need to know
  #the xpath before writing the tests...

  scenario 'a player can return to the play screen to have another go' do
    sign_in_and_play
    click_on(id='rock')
    expect(page).to have_button('Have another go?')
  end


  scenario 'clicking a button takes the player to the winner page' do
    sign_in_and_play
    click_on(id='rock')
    expect(current_path).to eq '/battle'
  end

  scenario 'rock beats scissors' do
    allow_any_instance_of(Computer).to receive(:weapon).and_return(:scissors)
    sign_in_and_play
    click_on(id='rock')
    expect(page).to have_content "You chose wisely."
  end

  scenario 'paper beats rock' do
    allow_any_instance_of(Computer).to receive(:weapon).and_return(:paper)
    sign_in_and_play
    click_on(id='rock')
    expect(page).to have_content "You did not choose wisely."
  end

  scenario 'scissors beats paper' do
    allow_any_instance_of(Computer).to receive(:weapon).and_return(:paper)
    sign_in_and_play
    click_on(id='scissors')
    expect(page).to have_content "You chose wisely."
  end

#why no need for srand here in the stubs above?
#what's the difference between stubbing here and the doubling
#in the tests for computer_spec???

#would these tests be better off in the model???



  #functionality to add:



  #I'd like to route to a different image depending on the result
  #but that seems like too much for now...
  #credit unsplash photographers



end
