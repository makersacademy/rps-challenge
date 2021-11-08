feature 'Index page form' do
  scenario 'on completion lead to a page that gives the user the option of clicking "rock", "paper" and "scissors"' do
    sign_in_and_play
    expect(page).to have_content('Hi, John')
    expect(page).to have_content('Rock')
    expect(page).to have_content('Paper')
    expect(page).to have_content('Scissors')
  end
end