Login.initialize_browser($config['browserff'],$config['qa_url'])
Login.login_workflow($config['username'],$config['password'])
Dashboard.links_check
Dashboard.icons_check
Spreadsheetimport.importSpreadsheet($test_data['filename'])


puts "style f: #{$test_data['style_fields']}"


$test_data['style_fields'].each do |key,val|
    Datamapping.verify_field_mapping(key,val)
end


$test_data['SKU_Fields'].each do |key,val|

    Datamapping.verify_field_mapping(key,val)
  end
$test_data['Inventory_fields'].each do |key,val|

    Datamapping.verify_field_mapping(key,val)
  end

$test_data['Business_Classification_Fields'].each do |key,val|

    Datamapping.verify_field_mapping(key,val)
  end
Spreadsheetimport.mapColumns
Stylesgridpageobject.spreadSheetUploadMessage($test_data['filename'])
Comman.verifySkuCountAndStatusOfStyle(1,"New",2,0)
Stylesgridpageobject.editStylesBtn(1).present?
Stylesgridpageobject.editStylesBtn(1).click
