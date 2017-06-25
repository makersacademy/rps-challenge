# spec/features/enter_name_spec.rb

feature 'enter name' do
  scenario 'submit a name' do
    sign_in_and_play
    expect(page).to have_content('Miho')
  end
end
