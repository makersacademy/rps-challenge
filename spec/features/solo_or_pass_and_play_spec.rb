feature 'Solo or pass and play' do
  scenario 'the home page should display two buttons, one for solo mode and one for pass and play' do
    visit("/")
    expect(page).to have_button("Solo Game")
    expect(page).to have_button("Pass and Play (2 player mode)")
  end

end