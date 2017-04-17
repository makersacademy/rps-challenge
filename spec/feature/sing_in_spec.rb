feature 'Enter name' do
  scenario "submitting name" do
    sing_in
    expect(page).to have_content('Welcome Mattia')
  end
end
