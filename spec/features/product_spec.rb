require 'spec_helper'

describe Spree::Product do
  describe "admin interface" do
    it "should have a set count box" do
      product = create(:product)
      user = create(:admin_user, :email => "admin@person.com", :password => "password", :password_confirmation => "password")
      sign_in_admin!(user)
#      visit "/admin/products"
#      within('table.index') { click_link "Edit" }

      visit "/admin/products/#{product.to_param}/edit"

      fill_in 'Set Count', :with => 6
      click_button "Update"
      page.should have_content("successfully updated!")
      find_field('Set Count').value.should eq '6'
    end
  end

  describe "product page" do
    it "should have select box for quantity" do
      product1 = create(:product, :set_count => 10)

      visit "/products/#{product1.to_param}"

      page.should have_select "quantity"
    end
  end

  describe "shopping cart", js: true do
    it "should have select box for quantity" do
      product1 = create(:product, :name => "RoR Mug", :set_count => 10)

    visit spree.root_path
    click_link "RoR Mug"

#      visit "/products/#{product1.to_param}"
      select (3*product1.set_count).to_i, :from => "quantity"
      click_button('add-to-cart-button')
      page.should have_select "order[line_items_attributes][0][quantity]"
    end

    it "should select correct quantity in dropdown" do
      product1 = create(:product, :set_count => 10)

      visit "/products/#{product1.to_param}"
      select (3*product1.set_count).to_i, :from => "quantity"
      click_button('add-to-cart-button')
      page.should have_select "order[line_items_attributes][0][quantity]"
      find_field('order[line_items_attributes][0][quantity]').find('option[selected]').text.to_i.should == (3*product1.set_count).to_i
    end
  end

end
