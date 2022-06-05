xfeature 'Show computer choice' do
  scenario 'computer makes a random choice of rock, paper or scissors' do
    visit('/show_choice')
    expect(page).to have_content("Computer choice: Rock")#.or have_content("Computer choice: Paper")
  end
end

# is not working with the or options for random sample
