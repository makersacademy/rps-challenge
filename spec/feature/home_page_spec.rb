feature 'testing infrastructure working' do
  scenario 'should greet the player' do
    visit("/")
    expect(page).to have_content('Welcome to RPS game!')
  end
end
