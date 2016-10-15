feature "Start game", :type => :feature do
  scenario "The player chooses rock" do
    sign_in_and_play
    find_button('Rock').click
  end
end

feature "Start game", :type => :feature do
  scenario "The player chooses paper" do
    sign_in_and_play
    find_button('Paper').click
  end
end

feature "Start game", :type => :feature do
  scenario "The player chooses scissors" do
    sign_in_and_play
    find_button('Scissors').click
  end
end
