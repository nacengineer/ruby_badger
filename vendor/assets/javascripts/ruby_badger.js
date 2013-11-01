<% unless options[:skip_javascript] -%>
//= require <%= options[:javascript] %>
//= require <%= options[:javascript] %>_ujs
<% end -%>
