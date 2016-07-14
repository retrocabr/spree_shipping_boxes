# coding: utf-8

Deface::Override.new(:virtual_path => "spree/admin/shared/sub_menu/_configuration",
                      :name => "add_shipping_boxes_settings",
                      :insert_bottom => "[data-hook='admin_configurations_sidebar_menu'], #admin_configurations_sidebar_menu[data-hook]",
                      :text => "<%= configurations_sidebar_menu_item(t('shipping_boxes.configuration_link'), admin_shipping_boxes_url) %>")
