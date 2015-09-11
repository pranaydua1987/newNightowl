#load vars:
@mainnav = $test_data["mainnav"]
@eventname = $test_data["eventname"]
@producttitle = $test_data["productgridtitle"]
@saleprice = $test_data["saleprice"]
@retailprice = $test_data["retailprice"]
@off = $test_data["percentageoff"]
@size = $test_data["size"]
@qty = $test_data["qty"]
@color = $test_data["color"]
@heading = $test_data["checkout_heading"]
@totalitems = $test_data["totalitems"]
@returns = $test_data["returns"]
@site = $test_data["site"]
@color2 = $test_data["color_2"]


Before.initialize_browser($config["browser"],$config["url"])
Before.login_hautelook($config["checkout_user"],$config["checkout_password"])
Catalog.event($test_data["mainnav"],$test_data["eventname"])
Productpage.preproductpage($test_data["productgridtitle"],$test_data["retailprice"],$test_data["saleprice"],$test_data["percentageoff"])
Productpage.onproductpage($test_data["productgridtitle"],$test_data["size"],$test_data["qty"],$test_data["color"])
Checkout.verifyHeading(@heading)
Checkout.verifyTotalItems(@totalitems)
Checkout.verifySubTotal(@saleprice)
Checkout.verifyCartItem(1,@eventname,@producttitle,@size,@saleprice,@returns,@site,@color2,@qty)
After.tear_down
