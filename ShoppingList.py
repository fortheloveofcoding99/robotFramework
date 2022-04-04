from robot.api.deco import library, keyword
from robot.libraries.BuiltIn import BuiltIn


@library
class ShoppingList:


        def __init__(self):
                self.selLib = BuiltIn().get_library_instance("SeleniumLibrary")

        #we add self so the scope of selLib will be on the entire class


        # method name gets converted into keyword name


        @keyword
        def listofthings(self):
            print("shopping list")

        @keyword
        def add_items_to_cart_and_checkout(self, productslist): # passing the list of products as arguments
                # calling the robot keyword 'Get Webelements' in the python file
                products = self.selLib.get_webelements("xpath://a[@class='product-name']")
                # using the keyword that get_webelements that selenium have originally written in their library
                for product in products:
                        if product.text in productslist:
                                self.selLib.click_button



