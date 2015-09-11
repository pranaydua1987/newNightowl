class Checkout
  def self.verifyHeading(heading)
    $method = __method__
    ($browser.h2(:class => "checkout-page__page-heading").text.include? (heading)) == true
  end

  def self.verifyTotalItems(totalitems)
    $method = __method__
  (totalitems == $browser.span(:class => "checkout-cart__items-in-cart").text) == true
  end

  def self.verifySubTotal(subtotal)
    $method = __method__
    sub_total = $browser.span(:class => "checkout-cart__subtotal").text
    sub_total = sub_total.sub("Subtotal","").strip
    puts sub_total
    (subtotal == sub_total) == true
  end

  def self.verifyCartItem(index,brand,producttitle,size,price,returns,flash_persitence,color,qty)
    $method = __method__
    sleep 5
    # $browser.div(:class => "checkout-cart checkout-cart--hautelook").div(:class => "checkout-cart__items").wait_until_present
    # cart_item_content = $browser.div(:class => "checkout-cart checkout-cart--hautelook").div(:class => "checkout-cart__items").div(:class => "ember-view cart-item swing-back-animation").div.div.div(:class => "cart-item__info").div.div
    # puts cart_item_content.div.text
    # puts cart_item_content.a.text
    # cart_footer = cart_item_content.div.last
    # puts cart_footer.div.text
    #
    # $browser.div(:xpath => "//div[@class='checkout-cart__items']/div[contains(@class,'ember-view cart-item swing-back-animation')][1]/div[contains(@class,'cart-item__content swing-back-animation__content')]/div[contains(@class,'cart-item__bounds')]/div[contains(@class,'cart-item__info')]/div[contains(@class,'cart-item__details')]/div[contains(@class,'cart-item-details')]").text
    # puts $browser.div(:data_bindattr_61 => "61").present?
    # puts $browser.div(:data_bindattr_58 => "58").text
    # # , :class => "cart-item-details__brand-name").text
    # # # puts
    # # puts $browser.a(:data_bindattr_59 => "59").text
    # # # , :class => "cart-item-details__product-title").text
    # # puts $browser.div(:data_bindattr_61 => "61").div(:class => "cart-item-details__color").text
    # # puts $browser.div(:data_bindattr_61 => "61").div(:class => "cart-item-details__size").text
    # # puts $browser.div(:data_bindattr_61 => "61").div(:class => "cart-item-details__return").text
    # # puts $browser.label(:data_bindattr_62 => "62").span.text
    # # .span(:class => "cart-item-details__quantity-text").text
    # puts $browser.div(:class => "checkout-cart__items").div(:id => /ember/, :index => 0).div.text
    puts $browser.div(:xpath => "//div[@class='checkout-cart__items']//div[contains(@class,'ember-view cart-item swing-back-animation')][#{index}]/div[contains(@class,'content')]/div[contains(@class,'bounds')]/div[contains(@class,'info')]/div[contains(@class,'details')]/div[contains(@class,'details')]/div[contains(@class,'brand-name')]").text
    # puts $browser.(:xpath => "//div[@class='checkout-cart__items']//div[contains(@class,'ember-view cart-item swing-back-animation')][#{index}]/div[contains(@class,'content')]/div[contains(@class,'bounds')]/div[contains(@class,'info')]/div[contains(@class,'details')]/div[contains(@class,'details')]/a[contains(@class,'product-title’)]").text
    puts $browser.div(:xpath => "//div[@class='checkout-cart__items']//div[contains(@class,'ember-view cart-item swing-back-animation')][#{index}]/div[contains(@class,'content')]/div[contains(@class,'bounds')]/div[contains(@class,'info')]/div[contains(@class,'details')]/div[contains(@class,'details')]/div[contains(@class,'footer')]/div[contains(@class,'color')]").text
    puts $browser.div(:xpath => "//div[@class='checkout-cart__items']//div[contains(@class,'ember-view cart-item swing-back-animation')][#{index}]/div[contains(@class,'content')]/div[contains(@class,'bounds')]/div[contains(@class,'info')]/div[contains(@class,'details')]/div[contains(@class,'details')]/div[contains(@class,'footer')]/div[contains(@class,'size')]").text
    puts $browser.div(:xpath => "//div[@class='checkout-cart__items']//div[contains(@class,'ember-view cart-item swing-back-animation')][#{index}]/div[contains(@class,'content')]/div[contains(@class,'bounds')]/div[contains(@class,'info')]/div[contains(@class,'details')]/div[contains(@class,'details')]/div[contains(@class,'footer')]/div[contains(@class,'return')]").text
    puts $browser.div(:xpath => "//div[@class='checkout-cart__items']//div[contains(@class,'ember-view cart-item swing-back-animation')][#{index}]/div[contains(@class,'content')]/div[contains(@class,'bounds')]/div[contains(@class,'info')]/div[contains(@class,'details')]/div[contains(@class,'details')]/div[contains(@class,'footer')]/div[contains(@class,'ship-time')]").text
    # puts $browser.(:xpath => "//div[@class='checkout-cart__items']//div[contains(@class,'ember-view cart-item swing-back-animation')][#{index}]/div[contains(@class,'content')]/div[contains(@class,'bounds')]/div[contains(@class,'info')]/div[contains(@class,'details')]/div[contains(@class,'details')]/div[contains(@class,'footer')]/label[contains(@class,'quantity’)]").text
    puts $browser.div(:xpath => "//div[@class='checkout-cart__items']//div[contains(@class,'ember-view cart-item swing-back-animation')][#{index}]/div[contains(@class,'content')]/div[contains(@class,'bounds')]/span[contains(@class,'price’)]").text

    #


    #
    #
    #
    #
    #
    #
    #
    #
    #
    #
    #
    # # present?
    # # .div(:class => "cart-item-details__brand-name").present?
    # puts $browser.div(:class => "checkout-cart checkout-cart--hautelook").div(:class => "checkout-cart__items").div(:class => "cart-item__content swing-back-animation__content").present?
    # cart_item_content = $browser.div(:class => "checkout-cart checkout-cart--hautelook").div(:class => "checkout-cart__items").div(:class => "ember-view cart-item swing-back-animation").div(:class => "cart-item__content swing-back-animation__content")
    # .div(:class => "checkout-cart__items").div(:class => "cart-item__content swing-back-animation__content")
    # puts cart_item_content.div(:class => "cart-item-details__brand-name").text
    # puts cart_item_content.a(:class => "cart-item-details__product-title").text
    # # puts cart_item_content.div(:class => "cart-item-details__quantity-text").text
    # # $browser.div(:class => "cart-item__content swing-back-animation__content").wait_until_present
    # # $browser.div(:class => "checkout-cart__items").div(:class => "cart-item__content swing-back-animation__content").wait_until_present
    # (brand == $browser.div(:class => "cart-item__content swing-back-animation__content", :index => index).div(:class => "cart-item-details__brand-name").text) == true
    # (producttitle == $browser.div(:class => "cart-item__content swing-back-animation__content", :index => index).div(:class => "cart-item-details__product-title").text) == true
    # (size == ($browser.div(:class => "cart-item__content swing-back-animation__content", :index => index).div(:class => "cart-item-details__size").text).sub("Size:","").strip) == true
    # (price == $browser.div(:class => "cart-item__content swing-back-animation__content", :index => index).div(:class => "cart-item__price").text) == true
    # ($browser.div(:class => "cart-item__content swing-back-animation__content", :index => index).div(:class => "cart-item-footer__left").span.class_name).include? "#{flash_persitence}" == true
    # (returns == $browser.div(:class => "cart-item__content swing-back-animation__content", :index => index).div(:class => "cart-item-details__return").text) == true
    # (color == ($browser.div(:class => "cart-item__content swing-back-animation__content", :index => index).div(:class => "cart-item-details__color").text).sub("Color:","").strip) == true
    # (qty == $browser.div(:class => "cart-item__content swing-back-animation__content", :index => index).div(:class => "cart-item-details__quantity-text").text) == true
  end
end
