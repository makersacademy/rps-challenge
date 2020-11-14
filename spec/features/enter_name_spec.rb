feature 'enter name' do
  scenario "the user can submit their name" do
    sign_in_and_play
    expect(page).to have_content('Human vs AI')
  end
end