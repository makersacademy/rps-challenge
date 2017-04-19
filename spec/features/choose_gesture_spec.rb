feature 'User can choose gesture' do
  scenario 'User has five choices of gesture'do
    sign_in
    expect(page).to have_content("Rock Paper Scissors Spock Lizard")
  end
end
