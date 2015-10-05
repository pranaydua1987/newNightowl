Login.initialize_browser($test_data['browser'],$test_data['url'])
Login.login_workflow($config['username'],$config['password'])
Dashboard.links_check
Dashboard.icons_check
Spreadsheetimport.importSpreadsheet("ExistingStyles.xls")
Spreadsheetimport.mapColumns
Dashboard.logout
