require 'rails_helper'

RSpec.feature "Visitor clicks on an individual product", type: :feature, js: true do

  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name: Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "users clicks on product and opens product page" do
    # ACT
    visit root_path
    first('article.product').find_link('Details').click

    # DEBUG / VERIFY
    sleep 5
    save_screenshot
    expect(page).to have_css 'article.product-review'
  end

end