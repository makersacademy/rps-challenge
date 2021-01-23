feature 'Enter players' do 
  scenario 'player should add names' do 
    sign_in_and_play
    expect(page).to have_content "P1 vs CPU"
  end
end