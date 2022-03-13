require_relative 'web_helpers'


feature 'checking the homepage' do
  scenario 'holds the title' do
    visit('/')
    expect(page).to have_content('Welcome to a game of RPS')
  end
  scenario 'asks for a username' do
    visit('/')
    expect(page).to have_content('Insert your name')
    expect(page).to have_field('player_name')
  end
end

feature 'checking that game' do
  scenario 'displays title with player name' do
    sign_in
    expect(page).to have_content "Ready for a round of RPS Nico?"
  end

  scenario 'prompts the player for an answer' do
    sign_in
    expect(page).to have_content "Please select your hand"
    expect(page).to have_field "player_answer"
  end
end

feature 'checking the result page' do
  scenario 'saves and returns the player answer' do
    sign_in
    choose 'Paper'
    click_on 'Submit'
    expect(page).to have_content "You have selected Paper"
  end

  scenario 'returns the pc answer' do
    sign_in
    choose 'Paper'
    click_on 'Submit'
    #this stubbing doesn't work
    allow($game).to receive(:sample).and_return("Rock")
    expect(page).to have_content "The computer selected"
  end

  xscenario 'returns the result' do
    sign_in
    choose 'Paper'
    click_on 'Submit'
    expect(page).to have_content "You have selected Rock"
  end

  scenario 'holds a button to play another round' do
    sign_in
    choose 'Paper'
    click_on 'Submit'
    expect(page).to have_button "Another round?"
  end

  scenario 'starts another round' do
    sign_in
    choose 'Paper'
    click_on 'Submit'
    click_on 'Another round?'
    expect(page).to have_content "Ready for a round of RPS"
  end


end