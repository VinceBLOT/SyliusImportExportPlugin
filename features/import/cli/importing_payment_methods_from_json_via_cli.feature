@managing_payment_methods
Feature: Importing payment methods from json with the command-line interface
    In order to have my payment methods from external source
    As an Developer
    I want to be able to import data from json file from the commandline

    Background:
       Given I have a working command-line interface

    @cli_importer
    Scenario: Importing defined payment-methods with the cli-command
        When I import "payment_method" data from json file "payment-methods.json" file with the cli-command
        Then I should see "Imported" in the output
        And I should have at least the following payment-method ids in the database:
          | OFFLINE |
          | PAYPAL  |
