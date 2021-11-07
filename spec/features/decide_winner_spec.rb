feature "decide the winner" do
  scenario 'compares results of player vs computer and decides the winner' do
    sign_in
    start_game
    expect(page).to have_content "Ginny selected Paper"

  end
end