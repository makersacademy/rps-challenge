RSpec.feature 'result' do
  scenario 'user wins' do
    register
    click_button 'Rock'
    expect(page).to have_content("Vicky wins!")
  end
end
