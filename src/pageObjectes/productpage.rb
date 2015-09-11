class Productpage
  def self.preproductpage(productgridtitle,retailprice,saleprice,percentageoff)
    $method = __method__

    product_div = $browser.div(:text => "#{productgridtitle}").parent
    sale_price = product_div.div(:class => "catalog-grid-product__price").span.text
    puts sale_price
    if sale_price == saleprice
      puts "sale price match"
    end
    retail_price = product_div.span(:class => "catalog-grid-product__retail").text
    puts retail_price
    if retail_price == retailprice
      puts "retail price match"
    end
    percentage_off = product_div.span(:class => "catalog-grid-product__savings").text

    if percentageoff == percentage_off
      puts "percentageoff is match"
    end

    $browser.div(:text => "#{productgridtitle}").click
    if productgridtitle == ($browser.h2(:class => "summary__product-name").when_present.text) then
      # puts "on productpage"
    end
  end

  def self.onproductpage(productgridtitle,size,qty,color)
    $method = __method__
    $browser.div(:class => "select-size attribute-buttons").span(:text => "#{size}").when_present.click
    # a.(:class => "new-selector__link")
    $browser.select_list(:class => "select-quantity").select "#{qty}"
    if color != "nil"
      #set color
    end
    sleep 1
    $browser.button(:class => "add-to-cart add-to-cart--hautelook").click
    $browser.div(:class => "cart-item__details").wait_until_present
    total_cart_items = $browser.div(:class => "full-cart__items").divs(:class => "ember-view cart-item swing-back-animation").size
    puts "total #{total_cart_items}"
    cart_item_details = $browser.div(:class => "cart-item__details").text
    puts "#{cart_item_details}"
    if (cart_item_details.include? productgridtitle) != true then
      puts "wrong product added to cart."
    end
    $browser.a(:class => "full-cart__checkout-button").click
  end

end
