feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Halloumi'
    click_button 'Start game!'

    expect(page).to have_content 'Welcome, Halloumi!'
  end
end