feature "Winner" do
  scenario 'User can play again' do
    sign_in_and_play
    expect(page).to have_content "Play again?"
  end
end
