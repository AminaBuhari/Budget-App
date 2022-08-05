module GroupsHelper
    def image(image)
        if image.present?
          image_tag(url_for(image), alt: 'icon', class: 'thumbnail icon-img')
        else
          image_tag('thumb.png', alt: 'icon', class: 'thumbnail icon-img')
        end
      end
end
