USING: accessors kernel math syntax tools.test examples.tuples ;
IN: examples.tuples.tests

{ T{ cart-item f f f f } } [
cart-item new
] unit-test

{ T{ cart-item f f 12.5 f } } [
cart-item new 25.00 >>price
[ 0.5 * ] change-price
] unit-test

{ T{ cart-item f "Seven Languages Book" 25.00 1 } } [
"Seven Languages Book" 25.00 1 cart-item boa
] unit-test

{ T{ cart-item f "Paint brush" 1.00 1 } } [
"Paint brush" <dollar-cart-item>
] unit-test

{ T{ cart-item f f f 1 } } [
<one-cart-item>
] unit-test
