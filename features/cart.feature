@cart
Feature: cart
  As an Etsy user
  I want to use the cart functionality
  In order to manage my items

  Background: Navigate to the Etsy website
    Given I navigate to the Etsy website
  
  @cleanup
  Scenario: Add item to the cart
    When I add an item to the cart
    And I navigate to the cart page
    Then the item is displayed