require 'rails_helper.rb'

feature "Create new buddy" do
    scenario "User successfully navigates to buddy listings from welcome page" do
        visit buddies_path
        expect(page).to have_content("Listing buddies")
        click_link "New buddy"
        expect(page).to have_content("New Buddy")
        expect(page).to have_field("fname")
        expect(page).to have_field("lname")

  
    end
    
    scenario "User successfully creates a new buddy" do
        visit new_buddy_path
        expect(page).to have_content("New Buddy")
        fill_in "fname", with: "Sahithi"
        fill_in "lname", with: "Meduri"
        click_button "Save Buddy"
        expect(page).to have_content("Sahithi")
        expect(page).to have_content("Meduri")
    end
end