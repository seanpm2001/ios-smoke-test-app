@sheets
Feature: Sheets
  In order to demonstrate interactions with sheets
  As a Calabash maintainer
  I want some Scenarios that show Calabash working with sheets

  # These are sheets that are presented by _your_ application using:
  #
  #   UIActionSheetView *sheet = [[UIActionSheet alloc] ...];
  #   # Action sheets can be anchored in many ways; this is
  #   # just an example.
  #   [sheet showFromTabBar:self.tabBarController.tabBar];
  #
  # These are _not_ sheets generated by the OS on behalf of your
  # app.  An example of sheet present by the OS on behalf of your
  # app is the sheet that appears when you try to cancel an email
  # message.

  Background:  Get me to the third tab
    Given I see the third tab

  Scenario: Touch OK button on a sheet
    When I touch the show sheet button
    Then I see a sheet
    Then I see the "Smoke Test!" sheet
    And I wait for all animations to stop
    And I can dismiss the sheet with the OK button
