feature 'View choices' do
  scenario 'see the choices you have to select from' do
    sign_in_and_play
    expect(page).to have_content 'Rock / Paper / Scissors'
  end
end
