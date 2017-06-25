module RedminePluginOfGyazo
  Redmine::WikiFormatting::Macros.register do
    desc "redmine_plugin_of_yours" + "'\n\n" +
      " !{{gyazo(URL)}}"
    macro :gyazo do |obj, args|
        link_to(image_tag("#{args[0]}/raw"),args[0])
    end
  end
end
