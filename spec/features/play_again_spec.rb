feature 'Play again' do
  scenario 'Player can select to play again' do
    fill_form
    page.select 'Rock', from: 'choice'
    click_button 'Submit'
    click_button 'Play again'
    expect(page).to have_content 'Welcome to Rock Paper Scissors!'
  end
end
