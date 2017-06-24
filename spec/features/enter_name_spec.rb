# spec/features/enter_name_spec.rb

feature 'enter name' do
  scenario 'submit a name' do
    visit('/')
    fill_in(:player_name, with: 'Miho')
    click_button('Submit')
    expect(page).to have_content('Miho')
  end
end
