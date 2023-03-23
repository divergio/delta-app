/+  *test
/=  agent  /app/delta
|%
+$  card  card:agent:gall
++  bowl
  |=  run=@ud
  ^-  bowl:gall
  :*  [~zod ~zod %delta]
    [~ ~]
    [run `@uvJ`(shax run) (add (mul run ~s1) *time) [~zod %delta ud+run]]
  ==
+$  state
  $:  %0
      values=(list @)
  ==
++  test-delta
  =|  run=@ud
  =^  move  agent  (~(on-poke agent (bowl run)) %delta-action !>([%push ~zod 10.000]))
  =^  move  agent  (~(on-poke agent (bowl run)) %delta-action !>([%push ~zod 8.000]))
  =+  !<(=state on-save:agent)
  %+  expect-eq
    !>  `(list @)`~[8.000 10.000]
    !>  values.state
++  test-initial-state-emits-card
  =|  run=@ud
  =^  move  agent  (~(on-poke agent (bowl run)) %delta-action !>([%push ~zod 42]))
  =/  emitted  (~(on-watch agent (bowl run)) `path`[%values ~])
  =/  card  (snag 0 -.emitted) :: tried to make this more thorough, but had
                               :: trouble digging into the card structure
  %+  expect-eq
    !>  %give
    !>  -.card
--