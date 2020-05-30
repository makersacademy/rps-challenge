feature 'prints correct result to screen' do

  scenario 'prints you won when player wins' do
    winning_play
    expect(page).to have_content("You Won!")
  end

end
