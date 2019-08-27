feature 'Testing infrastructure' do
    scenario 'Can run app and check page content' do
      visit('/')
      expect(page).to have_content 'Site is up!'
    end
  end
feature 'input names' do
    scenario 'submits names' do
        visit('/names')
        sign_in_and_play
        expect(page).to have_content "Bob VS. John"
    end
end
feature 'input name of 1 player' do
    scenario 'submits players name' do
        visit('/names')
        sign_in_and_play2
        expect(page).to have_content "Bob VS. AI"
    end
end
feature 'Game is played' do
    scenario "When I submit 'Rock' I win" do
      allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
      visit '/names'
      fill_in('name', with: 'Jeff')
      select('Rock', from: 'your_choice')
      click_button('Play')
      expect(page).to have_content "The result is .... You won"
    end
end
  feature 'Game is played' do
    scenario "When I submit 'Rock' I lose" do
      allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
      visit '/names'
      fill_in('name', with: 'Jeff')
      select('Rock', from: 'your_choice')
      click_button('Play')
      expect(page).to have_content "The result is .... You won"
    end
end
feature 'Game is played' do
    scenario "When I submit 'Rock' I draw" do
      allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
      visit '/names'
      fill_in('name', with: 'Jeff')
      select('Rock', from: 'your_choice')
      click_button('Play')
      expect(page).to have_content "The result is .... You won"
    end
end