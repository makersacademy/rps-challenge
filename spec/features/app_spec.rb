feature 'starting a game of RPS' do 
  scenario 'page has form' do 
    visit '/'
    expect(page).to have_content "Enter name"
  end 
end 

feature 'player can enter their name' do 
  scenario 'enters name and redirect to play page' do 
    visit '/'
    fill_in 'Name', with: 'Bob'
    click_on 'Submit'
    expect(page).to have_content 'Bob, are you ready to play?'
  end 
end 

feature 'player makes move selection' do 
  scenario 'player can choose a move' do
   visit '/'
    fill_in 'Name', with: 'Bob'
    click_on 'Submit'
    expect(page).to have_content 'Make your move...' 
  end
end

feature 'play can submit a move' do 
  scenario 'playey makes move and confirmation appears' do 
   visit '/'
    fill_in 'Name', with: 'Bob'
    click_on 'Submit'
    choose 'rock'
    click_on 'Play!'
    expect(page).to have_content 'You played rock'
  end 
end 
