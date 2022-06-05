feature 'Show computer choice' do
  scenario 'computer makes a random choice of rock, paper or scissors' do
    allow_any_instance_of(Array).to receive(:get_choice).and_return('Scissors')
    visit('/show_choice')
    expect(page).to have_content("Computer choice: Scissors")
  end
end

# is not working with the or options for random sample
