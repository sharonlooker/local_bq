view: exp {
  sql_table_name: `finances-191106.expenses.exp` ;;

  dimension_group: created {
    type: time
    sql: ${TABLE}.date ;;
  }
}
