type discount =
  | NoDiscount
  | PercentDiscount(float)
  | FixedDiscount(float)

let displayDiscount = (discount: discount): string =>
    switch discount {
    | NoDiscount => "No Discount"
    | PercentDiscount(percent) => "Percent Discount: " ++ Js.Float.toString(percent *. 100.0) ++ "%"
    | FixedDiscount(amount) => "Fixed Discount: " ++ Js.Float.toString(amount)
}

let discounts: array<discount> = [PercentDiscount(0.10), FixedDiscount(20.), NoDiscount]

let htmlDiscounts = Js.Array.map(displayDiscount, discounts)
Js.log(htmlDiscounts)