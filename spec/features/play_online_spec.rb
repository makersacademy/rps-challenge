

feature 'playing a game against the computer' do

  scenario 'Home page asks for a player name' do
    visit '/'
    expect(page).to have_content "Enter Your Name."
  end

  scenario 'After entering name, player is asked to choose a throw' do
    visit '/'
    fill_in('name', with: 'Bob')
    click_button 'submit'
    expect(page).to have_content "Ok Bob; what do you want to throw?"
  end
    
  feature'After throwing a weapon' do

    scenario 'player can get a result with Paper' do
        visit '/choose'
        select('Paper', from: 'Weapons')
        click_button('Throw')
        expect(page).to have_content "And the result is:" 
    end
    scenario 'player can get a result with Rock' do
        visit '/choose'
        select('Rock', from: 'Weapons')
        click_button('Throw')
        expect(page).to have_content "And the result is:" 
    end
    scenario 'player can get a result with Scissors' do
        visit '/choose'
        select('Scissors', from: 'Weapons')
        click_button('Throw')
        expect(page).to have_content "And the result is:" 
    end

  end

end