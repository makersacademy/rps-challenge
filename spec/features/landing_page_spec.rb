feature 'landing_page' do
  scenario 'user sees a welcome message and a form' do
    visit('/')
    expect(page).to have_content("Rock, Paper, Scissors!")
    expect(page).to have_button("Let's Play!")
  end
end
