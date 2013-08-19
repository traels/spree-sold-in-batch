require 'spec_helper'

describe Spree::Product do
  describe "admin interface" do
    it "should have a set count box" do
      product = create(:product)
      user = create(:admin_user, :email => "admin@person.com", :password => "password", :password_confirmation => "password")
      sign_in_admin!(user)
      visit "/admin/products"
      within('table.index') { click_link "Edit" }
      fill_in 'Set Count', :with => 6
      click_button "Update"
      page.should have_content("successfully updated!")
      find_field('Set Count').value.should eq '6'
    end
  end

  describe "product page" do
    it "should show the user a total quantity" do
      product1 = create(:product, :set_count => 10)

      visit "/products/#{product1.permalink}"

      page.should have_content("Set contains #{product1.set_count} pcs")
    end
  end

  describe "product page", js: true do
    it "should update text when changing cart quantity" do
      product1 = create(:product, :set_count => 10)

      visit "/products/#{product1.permalink}"
      fill_in "variants_#{product1.master.id}", :with => 12

      page.should have_content("Set contains #{product1.set_count} pcs, your purchase: 120 pcs")
    end
  end

end