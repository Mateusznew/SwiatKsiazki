*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/Cart.robot
Resource  ../Resources/PO/Product.robot

*** Keywords ***
Search for the product
    TopNav.Load
    TopNav.Search the Product

Add product to cart
    Product.Verivy Search Product
    Product.Add Product to Cart


Go to Signin
    Cart.Verify Add Product
    Cart.Go to Cart
