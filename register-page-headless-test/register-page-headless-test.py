import unittest
from selenium import webdriver


class TestGoogleGhostDriver(unittest.TestCase):
    def setUp(self):
        # The phantomjs executable is assumed to be in your PATH:
        self.driver = webdriver.PhantomJS('phantomjs')

    # Simple test that performs a google search
    def testGoogleSearch(self):
        self.driver.get("http://www.google.com")
        self.assertEqual(u'Google', self.driver.title)
        # Enter text into the search field
        self.assertTrue(self.driver.find_element_by_name("q").is_displayed())
        self.driver.find_element_by_name("q").send_keys("selenium")
        # Click the search button
        self.driver.find_element_by_name("btnG").click()
        print("current_url is now '%s'" % (self.driver.current_url))

    def tearDown(self):
        self.driver.quit()


if __name__ == '__main__':
    unittest.main()
