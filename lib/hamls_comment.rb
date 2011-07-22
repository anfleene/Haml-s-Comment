module HamlsComment
  Haml::Engine.class_eval do
    alias_method :initialize_without_file_comments, :initialize

    def initialize(template, options ={})
      template = template.dup
      template.insert(0,"/ START #{options[:filename]}\n")
      template.insert(-1,"\n/ END #{options[:filename]}")
      template.freeze
      initialize_without_file_comments(template, options)
    end

  end if Rails.env.development?
end
