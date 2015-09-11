class Catalog
  def self.mainnav(nav)
    $method = __method__
    $browser.a(:text => "#{nav}").click
  end

  def self.event(mainnav,eventname)
    $method = __method__
    li_parent = $browser.a(:text => "#{mainnav}").parent
    li_parent.hover
    li_parent.a(:text => "#{eventname}").when_present.click
    event_name = $browser.h1(:class => "event-header__title").when_present.text
    # if event_name == eventname then
    #   puts "wrong event page"
    # end
  end
end
