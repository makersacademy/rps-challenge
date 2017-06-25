# spec/features/start_game_spec.rb

feature 'entered into the RPS battle' do
  scenario 'user can see successful game entry' do
    sign_in_and_play
    expect(page).to have_content('Miho, are you ready?!')
  end
end
