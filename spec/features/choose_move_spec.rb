feature 'Player chooses move' do
  scenario 'player chooses which move to make' do
    sign_in
    expect(page).to have_content('Please enter your move')
  end

  scenario 'player chooses paper' do
    sign_in
    expect(page).to have_content('Paper')
  end

  scenario 'player chooses rock' do
    sign_in
    expect(page).to have_content('Rock')
  end

  scenario 'player chooses scissors' do
    sign_in
    expect(page).to have_content('Scissors')
  end

end


#   scenario 'I pick my move' do
#   sign_in
#     choose('A Radio Button')
#     expect(page).to
#   end
# end
