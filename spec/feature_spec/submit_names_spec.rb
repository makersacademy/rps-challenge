feature 'A player can submit their name' do
  scenario 'submit my name' do
    sign_in_with_name
    expect(page).to have_content('Eirik vs. ')
  end
end
