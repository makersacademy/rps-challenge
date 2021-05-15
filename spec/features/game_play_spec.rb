 feature 'Play game' do
  before do
    sign_in_and_play
  end

  scenario 'see the choices' do
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end
    
end