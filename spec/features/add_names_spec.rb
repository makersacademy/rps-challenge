feature 'enter names' do
  scenario "submitting players name" do
    sign_in_and_confirm
    expect(page).to have_content 'Rianne'
  end
end
