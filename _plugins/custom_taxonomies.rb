# _plugins/custom_taxonomies.rb
require 'jekyll-archives'

Jekyll::Hooks.register :site, :after_init do |site|
  site.config['jekyll-archives'] ||= {}
  
  # Enable custom taxonomies
  site.config['jekyll-archives']['enabled'] = ['subject', 'semester', 'courses', 'tags']

  # Define layouts for each taxonomy
  site.config['jekyll-archives']['layouts'] = {
    'subject'  => 'subject',   # _layouts/subject.html
    'semester' => 'semester',  # _layouts/semester.html
    'courses'  => 'course',    # _layouts/course.html
    'tag'      => 'tag'        # _layouts/tag.html
  }

  # Define permalinks for each taxonomy
  site.config['jekyll-archives']['permalinks'] = {
    'subject'  => '/subjects/:name/',
    'semester' => '/semester/:name/',
    'courses'  => '/courses/:name/',
    'tag'      => '/tags/:name/'
  }
end
