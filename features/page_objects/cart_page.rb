class CartPage
  include PageObject

  # objects on the search page.
  span(:cart_button, id: 'gnav-account-cart-description')

  # methods performed on the departments page objects.
  def navigate_to_cart
    cart_button_element.click
  end
end