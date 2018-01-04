view: expenses_live {
  sql_table_name: expenses.exp_gs ;;

  dimension: amount {
    type: number
    hidden: yes
    sql: ${TABLE}.amount ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
    drill_fields: [subcategory]
    link: {
      icon_url: "https://looker.com/favicon.ico"
      label: "Filter by {{value}}"
      url: "/dashboards/12?Date={{ _filters['expenses.created_date']|uri_encode }}&Category={{value}}"
    }
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: method_of_payment {
    type: string
    sql: ${TABLE}.method_of_payment ;;
  }

  dimension: subcategory {
    type: string
    sql: ${TABLE}.subcategory ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.vendor ;;
  }

  measure: total_spending {
    type: sum
    value_format_name: usd
    sql: ${amount} ;;
    drill_fields: [created_date, vendor, amount, category, subcategory]
  }

}
