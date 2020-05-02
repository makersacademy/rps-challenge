feature 'player makes a choice between RPS' do
  scenario 'picking confirms a choice' do
    sign_in
    click_button('rock')
    expect(page).to have_content("You picked rock.")
  end
end
