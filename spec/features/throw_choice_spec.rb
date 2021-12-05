feature 'throw a hand' do
  scenario 'The player choses one of t he 3 options and the page tells the player their choice' do
    sign_in
    select "Rock", :from => "Option to throw"
    click_button 'Submit'
    expect(page).to have_content("Rock")
  end
end
