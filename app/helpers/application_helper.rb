module ApplicationHelper


  # Devuelve un titulo por pagina.
  def title
    base_title = "GgrAplication"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  def logo
    image_tag("logo.png", :alt => "GgrAplication", :class => "round")
  end
end
