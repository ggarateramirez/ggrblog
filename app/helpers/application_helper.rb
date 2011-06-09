module ApplicationHelper


  # Devuelve un titulo por pagina.
  def title
    base_title = "granPa.com"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  def logo
    image_tag("granpa.png", :alt => "granPa.com", :size => "200x29", :class => "round")
  end
end
