feature 'Final Result' do
  scenario 'result page displays the winner with a message' do
    decisions_confirmed
    click_button "I'm not afraid! Lets do this!"
    expect(page).to have_content "is the ultimate champion of everything ever!!!"
  end
end