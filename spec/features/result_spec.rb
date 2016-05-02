feature 'Game Result' do
  scenario 'result page displays the winner with a message' do
    winning_decisions_confirmed
    click_button "I'm not afraid! Lets do this!"
    expect(page).to have_content "Lord Megatron won this round!"
  end

  scenario 'different message for a draw' do
    allow_any_instance_of(Array).to receive(:sample).and_return("ROCK")
    decisions_confirmed
    click_button "I'm not afraid! Lets do this!"
    m="A draw.... well that was anti-climactic.... just try again...."
    expect(page).to have_content m
  end

  scenario 'result page has a button to play again' do
    winning_decisions_confirmed
    click_button "I'm not afraid! Lets do this!"
    click_button "Play again!"
    expect(page).to have_content "Welcome to RPS"
  end
end

