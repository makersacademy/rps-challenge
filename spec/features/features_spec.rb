feature 'Pick Game Mode' do

  scenario 'pick 1 player ' do
    visit('/')
    click_button('1 Player')
    expect(page).to have_content 'Rock Paper Scissors Sign in to play! Player 1 name'
  end
end
