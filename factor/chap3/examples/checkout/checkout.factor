USING: kernel accessors locals
  math math.order math.functions math.parser
  sequences sequences.repeating ;
IN: examples.checkout

TUPLE: checkout item-count base-price taxes
shipping total-price ;

: sum ( seq -- n )
    0 [ + ] reduce ;

: cart-item-count ( cart -- count )
    [ quantity>> ] map sum ;

: cart-item-price ( cart-item -- price )
    [ price>> ] [ quantity>> ] bi * ;

: cart-base-price ( cart -- price )
    [ cart-item-price ] map sum ;

: <base-checkout> ( item-count base-price -- checkout )
    f f f checkout boa ;

: <checkout> ( cart -- checkout )
    [ cart-item-count ] [ cart-base-price ] bi <base-checkout> ;


