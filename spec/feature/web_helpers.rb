def name_and_submit
	visit('/')
	fill_in('p1_name', with: "Mabel")
	click_button('submit')
end

def two_names_and_submit
	visit('/')
	fill_in('p1_name', with: "Mabel")
	fill_in('p2_name', with: "Dipper")
	click_button('submit')
end