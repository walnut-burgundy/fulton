# Handoff content and delivery boundary

This records an actual local FP handoff run; its local run identifier is not
a hosted GitHub run. The command stage emitted the authoritative
`notes/cnc-followup.txt` byte for byte (cmp exit 0).

- Flexible Pipes owner revision: `def2a66fe61a2b23440f98031f1defa738a0d1ee`.
- Checked-Ithon revision: `d6e83969f82512e920fb17b44326cb54f31d015c`.
- ai-ci validator revision: `dfb14ccd651fc31545e0dc9d47463de6141a77f5`.
- Handoff payload SHA-256: `30f618157fd90fd4a0b0d633147ac3b9815e4061df5a25eddcc54263820c099f`.
- Prepared response SHA-256: `58cd87886919623b4388966682c4bafa5b6eb3314dc833d0b9d04be57a1a05b6`.
- Native FP receipt SHA-256: `ba9e34ce420b37490f200d830168bad655777dbadbbb6149f7eac2305fc37861`.
- Native stage SHA-256: `13bc3e27d805a7f2cfd5c184596aa283228dbc69350e8fcf1a3a0b151cea876a`.

The owner's `handoff.extract(response, payload)`, invoked through the pinned
Ithon entrypoint, returned the identical payload from the prepared final
response's sole text fence. Observed output:

```text
PASS exact prepared response payload; platform NOT_VERIFIED
```

The working-contract mechanical draft check also returned PASS. These are
content checks, not observations of the committed ChatGPT message.

The independent owner's `job_delivery.main()` was actually called through
Ithon with the native stage, payload, prepared response and result path.
It exited 1 with `ValueError: JOB-VISIBLE-MISSING`. Merely executing a
module file without calling its main was not acceptance evidence.
The native FP run exited 1 with `AWAITING_HANDOFF_DELIVERY`, as expected:
visible_state is PENDING, events is empty, dispatch_state is NOT_REQUESTED.
No event or result was promoted to OBSERVED. The trusted ChatGPT sink is
unavailable, so platform delivery remains NOT_VERIFIED. No job was dispatched.

Hosted status was checked separately. At ai-ci
`dfb14ccd651fc31545e0dc9d47463de6141a77f5`, all 11 reported PR workflow runs
completed successfully. Fulton at
`6485e0282253856de450c8a28be709fb85539d67` reported no associated PR workflow
runs. The exact mathematics has the separately recorded local M2/FP acceptance;
hosted shared workflow success does not accept the mathematical prose or
attest this particular visible message.
