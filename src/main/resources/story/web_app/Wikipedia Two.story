TestCase: Verify Wikipedia Search Functionality and Content

Lifecycle:
Examples:
{transformer=FROM_LANDSCAPE}
| search-input-field  | xpath(//input[@id='searchInput'])           |
| search-button       | xpath(//button[@type='submit'])              |
| search-results      | xpath(//div[@class='search-results'])        |
| first-search-item   | xpath(//div[@class='search-results']//a[1])  |
| page-title          | xpath(//h1[@class='firstHeading'])           |
| page-content        | xpath(//div[@id='mp-upper'])                 |

Scenario: Verify Wikipedia search functionality for "Automation" and validate the content of the first search result
  Given I am on the Wikipedia homepage at URL "https://www.wikipedia.org/"
  When I wait until element located by "<search-input-field>" appears
  When I enter "Automation" in field located by "<search-input-field>"
  When I wait until element located by "<search-button>" appears
  When I click on element located by "<search-button>"
  Then I wait until element located by "<search-results>" appears
  And I verify that the number of elements located by "<search-results>" is greater than "0"
  When I click on the first search result located by "<first-search-item>"
  Then I wait until element located by "<page-title>" appears
  And I verify that the text located by "<page-title>" contains "Automation"
  Then I wait until element located by "<page-content>" appears
  And I verify that the text located by "<page-content>" is not empty
