module Slickplan
  module Rooftop
    class Sitemap < ::Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)
      desc "Generate pages in Rooftop from a slickplan XML sitemap"
      class_option :xml,
                   desc: "The absolute path to a Slickplan XML file",
                   banner: "./file.xml",
                   default: nil,
                   aliases: '-x',
                   type: :string

      class_option :stub_content,
                   desc: "Include stub content in the generated pages",
                   banner: "true|false",
                   aliases: '-s',
                   type: :boolean

      def create_rake_task
        template 'slickplan.rake.erb', 'lib/tasks/slickplan.rake'
      end

    end

  end
end