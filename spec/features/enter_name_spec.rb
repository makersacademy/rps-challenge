feature 'Enter name' do
  scenario 'player can have entered name displayed' do
    enter_bob_hit_play
    expect(page).to have_content "Hello, Bob!"
  end
end