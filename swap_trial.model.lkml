connection: "thelook_events"

include: "*.view.lkml"                       # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

explore: order_items {
#   sql_always_where: ${created_date} > "1/14/15" ;;
  join: users {
    type: left_outer
    relationship: many_to_one
    sql_on: ${order_items.user_id} = ${users.id} ;;
  }

#   join: inventory_items {
#     type: left_outer
#     relationship: many_to_one
#     sql_on: ${inventory_items.id} = ${order_items.inventory_item_id} ;;
#   }
}


explore: inventory_items {
}
