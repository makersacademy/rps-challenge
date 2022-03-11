feature 'Testing form' do
  scenario 'The user can enter their name' do
    sign_in_and_play
    expect(page).to have_text('What is your move Valentina?')
    end
  end