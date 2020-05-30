feature 'prints correct result to screen' do

  xscenario 'prints you won when player wins' do
    winning_play
    expect(page).to have_content("You Won!")
  end

end
