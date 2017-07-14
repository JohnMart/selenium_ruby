@search
Feature: search
  As an Etsy user
  I want to search for items
  In order to find the items I want

  Background: Navigate to the Etsy website
    Given I navigate to the Etsy website

  #Scenario: Search for items via categories
    #When I navigate to an item category
    #Then the search results page is displayed
    
  Scenario Outline: Search for items via search bar
    When I search for an <item>
    Then the search results page is displayed

    Examples:
      | item |
      | handbags |
      | noresult |