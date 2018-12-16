feature 'Testing infrastructure' do
  scenario 'can run app and check page content' do
    visit('/')
    expect(page).to have_content "Rock paper scissors!"
  end
end

feature 'Able to enter name' do
  scenario 'Can enter name and see it displayed' do
    sign_in_and_play
    expect(page).to have_content "Rock paper scissors!"
    expect(page).to have_content "Name: Captain Jack"
  end
end

feature 'Able to play rock paper scissors' do
   scenario 'can enter scissors and told if lost, drew or won' do
      sign_in_and_play
      click_button 'scissors'
      a = "Computer choses rock: you lose"
      b = "Computer choses scissors: you draw"
      c = "Computer choses paper: you win"
      page.should satisfy {|page| page.has_content?(a) or page.has_content?(b) or page.has_content?(c)}
      end
   end
