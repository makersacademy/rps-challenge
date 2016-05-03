feature 'Final Result' do
  scenario 'final page displays overall winner wih a message' do
    victory
    m="Lord Megatron is the ultimate champion of everything ever!!!"
    expect(page).to have_content m
  end

  scenario 'final page has a button to play again' do
    victory
    click_button "Time to start over"
    expect(page).not_to have_content "Lord Megatron: 3"
    expect(page).to have_content "Lord Megatron: 0"
  end
end