;>
- Developer: ~novrul-falfen
- License: MIT
- App link: [~novrul-falfen/delta](web+urbitgraph://~novrul-falfen/delta)
- Source repo: [https://github.com/divergio/delta](https://github.com/divergio/delta)

Delta is a sample app from the App School Live documentation, this repo also contains `%delta`'s counterpart `%delta-follower`.

The main code for the app can be found at [ASL lesson2](https://github.com/sigilante/curriculum/blob/master/asl-2023.1/asl2.md).

It is a simple app that is used to explain the basic structure of agents and subscriptions.

You can interact with `%delta` in the dojo:

Push an item onto `~zod`'s state:
```hoon
> :delta &delta-action [%push ~zod 30.000]
```

Check the current state of ~zod's stack
```hoon
> :delta +dbug
>   [%0 values=~[30.000]]
```

Subscribe to updates on `~zod` with delta-follower:
```hoon
> :delta-follower [%sub ~zod]
>=
%delta-follower: subscribe succeeded!
>>  [%fact %delta-update]
>>  [%init values=~[30.000]]
```

Push another value to `~zod` and watch as it updates the follower:
```hoon
> :delta &delta-action [%push ~zod 10.000]
>=
>>  [%fact %delta-update]
>>  [%push target=~zod value=10.000]
```
