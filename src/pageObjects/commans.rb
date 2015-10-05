class Comman
  def self.verifyStyleColorsOnStylesGrid(expectedRed,expectedGreen,expectedYellow,expectedBlue)
    $method = __method__
   Stylesgridpageobject.getCountOfColoredRows
if (expectedRed>0) then
  assert_equal(Stylesgridpageobject.getStyleGridElements(Stylesgridpageobject.redRowsOnStylesGrid).size, expectedRed)

elsif (expectedGreen>0) then
    assert_equal(stylesGrid.getStyleGridElements(stylesGrid.greenRowsOnStylesGrid).size ,expectedGreen)

  elsif (expectedYellow>0) then
    assert_equal(stylesGrid.getStyleGridElements(stylesGrid.yellowRowsOnStylesGrid).size, expectedYellow)

  elsif (expectedYellow>0) then
  assert_equal(stylesGrid.getStyleGridElements(stylesGrid.blueRowsOnStylesGrid).size, expectedBlue)
  end
end

def self.verifySkuCountAndStatusOfStyle(styleRow,expectedStatus,expectedNewSkuCount,expectedExistingSkuCount)
$method = __method__
puts "hello pranay"
status=Stylesgridpageobject.statusOfStyle(styleRow)
puts status
newSkuCount=Stylesgridpageobject.newSkuCountOfStyle(styleRow);
puts newSkuCount
existingSkuCount=Stylesgridpageobject.existingSkuCountOfStyle(styleRow)
puts existingSkuCount

 assert_equal(status,expectedStatus)
 assert_equal(newSkuCount,expectedNewSkuCount)
 assert_equal(existingSkuCount,expectedExistingSkuCount)
  end
end
