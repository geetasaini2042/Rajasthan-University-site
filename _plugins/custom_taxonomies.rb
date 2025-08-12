# _plugins/custom_taxonomies.rb
# Jekyll Archives extra taxonomies setup

Jekyll::Hooks.register :site, :after_init do |site|
  # Existing config से archives object ले लो, नहीं है तो नया बना लो
  site.config['jekyll-archives'] ||= {}

  # Enable archives for these collections
  site.config['jekyll-archives']['enabled'] = [
    'subject',
    'semester',
    'course',
    'tag'
  ]

  # Layout mapping for each taxonomy
  site.config['jekyll-archives']['layouts'] = {
    'subject'  => 'subject',   # _layouts/subject.html
    'semester' => 'semester',  # _layouts/semester.html
    'course'   => 'course',    # _layouts/course.html
    'tag'      => 'tag'        # _layouts/tag.html
  }

  # Permalinks pattern (singular form to avoid conflict with index pages)
  site.config['jekyll-archives']['permalinks'] = {
    'subject'  => '/subject/:name/',
    'semester' => '/semester/:name/',
    'course'   => '/course/:name/',
    'tag'      => '/tags/:name/'
  }
end
