class SingleStyleEdit
#buttons
def self.addStyleBtn
  return $browser.elemets(:css => ".btn-primary")
end

def self.createInEcomBtn
  return $browser.button(:id =>"workflow_style_create_in_ecom")
end
def self.createInEcomBtnEnabled
  return $browser.button(:xpath => "//form/div/div[3]/button[2]")
end

def self.createInEcomBtnDisabled
  return $browser.button(:xpath => "//form/div/div[3]/button[2][@disabled='disabled']")
end
def self.remove
  return $browser.element(:css => "button.btn.btn-danger")
end

def self.createStyleBtn
    return $browser.button(:xpath => "//button[@type='submit']")
  end
def self.addSkuBtn
  return $browser.element(:css =>"#add-sku")
end
# def self.fixBizClassBtn
# return $browser.
#    @FindBy(linkText = "Fix Business Classification")
#    public WebElement fixBizClassBtn;
def self.validateBizClassBtn
  return $browser.button(:text => "Validate")
end

def self.previousBtn
  return $browser.element(:css => "i.fa.fa-arrow-left")
end
def self.previousBtnDisabled
return $browser.element(:css => "div#secondary-nav ul.nav li.disabled:nth-child(1)")
end
def self.nextBtn
return $browser.element(:css => ".fa-arrow-right")
end
def self.nextBtnDisabled
return $browser.element(:css => "div#secondary-nav ul.nav li.disabled:nth-child(2)")
end
  def self.editor_elements(label_name)
    edit_parent = $browser.label(:text => "#{label_name}").parent
    return edit_parent.text_field
  end 
