feature 'player wins round' do
  scenario 'player won that round' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "Fred won! Here's 10 points, hurray!"
  end
end
