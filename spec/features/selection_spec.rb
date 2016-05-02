feature 'select gesture' do

  scenario 'rock option' do
    sign_in
    find_button "rock"
  end

  scenario 'paper option' do
    sign_in
    find_button "paper"
  end

  scenario 'scissors option' do
    sign_in
    find_button "scissors"
  end

  scenario 'no spock or lizard options' do
    sign_in
    expect(page).not_to have_button "spock"
    expect(page).not_to have_button "lizard"
  end
end
