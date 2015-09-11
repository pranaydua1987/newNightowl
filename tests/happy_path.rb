Before.initialize_browser($config["browser"],$test_data["url"])
# Before.login_hautelook($test_data["username"],$test_data["password"])
Before.register_hautelook($test_data["email"],$test_data["password"])
After.tear_down
