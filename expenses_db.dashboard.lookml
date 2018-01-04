- dashboard: expenses
  title: Expenses
  layout: newspaper
  elements:
  - name: Stats This Month
    type: text
    title_text: Stats This Month
    row: 0
    col: 0
    width: 24
    height: 2
  - name: Trending
    type: text
    title_text: Trending
    row: 10
    col: 0
    width: 24
    height: 2
  - title: Subcategory (Filterable)
    name: Subcategory (Filterable)
    model: bq
    explore: expenses_live
    type: looker_column
    fields:
    - expenses_live.subcategory
    - expenses_live.total_spending
    limit: 500
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Date: expenses_live.created_date
      Category: expenses_live.category
    row: 27
    col: 13
    width: 11
    height: 9
  - title: Spent
    name: Spent
    model: bq
    explore: expenses_live
    type: single_value
    fields:
    - expenses_live.total_spending
    filters:
      expenses_live.created_date: 1 months
    limit: 500
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    row: 2
    col: 9
    width: 7
    height: 3
  - title: Trending Monthly
    name: Trending Monthly
    model: bq
    explore: expenses_live
    type: looker_line
    fields:
    - expenses_live.created_month
    - expenses_live.total_spending
    fill_fields:
    - expenses_live.created_month
    sorts:
    - expenses_live.created_month desc
    limit: 500
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    row: 12
    col: 0
    width: 24
    height: 6
  - title: By Category
    name: By Category
    model: bq
    explore: expenses_live
    type: looker_column
    fields:
    - expenses_live.category
    - expenses_live.created_month
    - expenses_live.total_spending
    pivots:
    - expenses_live.category
    fill_fields:
    - expenses_live.created_month
    sorts:
    - expenses_live.created_month
    limit: 500
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    title_hidden: true
    row: 18
    col: 0
    width: 24
    height: 7
  - title: Spending by Category (Filterable)
    name: Spending by Category (Filterable)
    model: bq
    explore: expenses_live
    type: looker_pie
    fields:
    - expenses_live.category
    - expenses_live.total_spending
    limit: 500
    value_labels: legend
    label_type: labPer
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Date: expenses_live.created_date
    row: 27
    col: 0
    width: 13
    height: 9
  - title: Spending by Category
    name: Spending by Category
    model: bq
    explore: expenses_live
    type: looker_pie
    fields:
    - expenses_live.total_spending
    - expenses_live.category
    filters:
      expenses_live.created_date: 1 months
    sorts:
    - expenses_live.total_spending desc
    limit: 500
    value_labels: legend
    label_type: labPer
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    row: 2
    col: 0
    width: 9
    height: 8
  - title: Credit Card Bill
    name: Credit Card Bill
    model: bq
    explore: expenses_live
    type: single_value
    fields:
    - expenses_live.total_spending
    filters:
      expenses_live.created_date: 1 months
      expenses_live.method_of_payment: Credit
    limit: 500
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    row: 2
    col: 16
    width: 8
    height: 3
  - title: Top Receipts
    name: Top Receipts
    model: bq
    explore: expenses_live
    type: table
    fields:
    - expenses_live.created_date
    - expenses_live.vendor
    - expenses_live.total_spending
    filters:
      expenses_live.created_date: 1 months
    sorts:
    - expenses_live.total_spending desc
    limit: 500
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    row: 5
    col: 9
    width: 15
    height: 5
  - name: See Past Data
    type: text
    title_text: See Past Data
    row: 25
    col: 0
    width: 24
    height: 2
  filters:
  - name: Date
    title: Date
    type: date_filter
    default_value: 90 days
    model:
    explore:
    field:
    listens_to_filters: []
    allow_multiple_values: true
    required: false
  - name: Category
    title: Category
    type: field_filter
    default_value: ''
    model: bq
    explore: expenses_live
    field: expenses_live.category
    listens_to_filters: []
    allow_multiple_values: true
    required: false
