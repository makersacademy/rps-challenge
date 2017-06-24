# spec/features/fist_battle_spec.rb

feature 'Rock Paper Scissors Battle' do
  scenario 'attack with Rock' do
    sign_in_and_play
    click_button('ROCK')
    expect(page).to have_content('Miho played ROCK')
  end
end
