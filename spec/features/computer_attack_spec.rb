feature "Computer Attack confirmation" do
  scenario 'page has a button to confirm choice and engage computer' do
    winning_decisions_confirmed
    click_button "I'm not afraid! Lets do this!"
    m=/Computer chose ROCK|Computer chose PAPER|Computer chose SCISSORS/
    expect(page).to have_content m
  end

  scenario 'page confirms computer has chosen its attack' do
    decisions_confirmed
    expect(page).to have_content "Computer has chosen its attack...."
  end
end