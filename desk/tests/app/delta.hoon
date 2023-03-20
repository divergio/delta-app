/+  *test
/=  agent  /app/delta
|%
++  bowl
  |=  run=@ud
  ^-  bowl:gall
  :*  [~zod ~zod %delta]
    [~ ~]
    [run `@uvJ`(shax run) (add (mul run ~s1) *time) [~zod %delta ud+run]]
  ==
+$  state
  $:  %0
      values=(list @p)
  ==
++  test-delta
  =|  run=@ud
  =^  move  agent  (~(on-poke agent (bowl run)) %delta-action !>([%push ~zod 10.000]))
  =+  !<(=state on-save:agent)
  %+  expect-eq
    !>  `(list @)`~[10.000]
    !>  values.state

--