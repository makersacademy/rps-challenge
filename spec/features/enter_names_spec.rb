feature "allows user/'s to enter names" do
  scenario 'Lets single player input name' do
    visit('/single')
    expect(page).to have_content 'Enter your name'
    expect(page).to have_button 'Submit'
  end

  scenario 'shows Player 1 name on screen' do
    play_single
    expect(page).to have_content 'Sid VS Computer'
  end
end
