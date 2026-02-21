Feature: Reporting and Exporting System Data
    As a system administrator  
    I want to generate reports and export data  
    So that I can analyze trends and use data in other systems

    Background:
        Given the following flights exist:
            | flight_number | departure_location | arrival_location | departure_time      | arrival_time        | cost |
            | IC067         | New York           | Austin           | 2025-12-04 09:00:00 | 2025-12-04 13:00:00 | 400  |
            | DL202         | Boston             | Miami            | 2025-12-05 10:00:00 | 2025-12-05 14:00:00 | 425  |
        And I am on the flights page

        Scenario: View all flights
            Then I should see "IC067"
            And I should see "DL202"