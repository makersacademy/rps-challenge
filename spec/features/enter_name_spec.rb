feature 'Enter name' do
  scenario 'submitting name' do
    sign_in
    expect(page).to have_content 'Vin Diesel, please choose your move!'
  end
end
