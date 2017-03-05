feature 'Entering name' do
  scenario "Single player can enter their name" do
    single_sign_in_and_play
    expect(page).to have_content("Hi Bob! Let's play Rock Paper Scissors!")
  end

  scenario "Two players can enter their names" do
    multi_sign_in_and_play
    expect(page).to have_content("Hi Bob and Basil! Let's play Rock Paper Scissors!")
  end
end
