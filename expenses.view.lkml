view: expenses {
  sql_table_name: expenses.exp ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.Amount ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
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
    sql: ${TABLE}.Date ;;
  }

  dimension: method_of_payment {
    type: string
    sql: ${TABLE}.Method_of_Payment ;;
  }

  dimension: month {
    type: string
    hidden: yes
    sql: ${TABLE}.Month ;;
  }

  dimension: month_number {
    type: number
    hidden: yes
    sql: ${TABLE}.Month_Number ;;
  }

  dimension: subcategory {
    type: string
    sql: ${TABLE}.Subcategory ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.Vendor ;;
  }

  dimension: year {
    type: number
    hidden: yes
    sql: ${TABLE}.Year ;;
  }

  measure: total_spending {
    type: sum
    value_format_name: usd
    sql: ${amount} ;;
  }
}
