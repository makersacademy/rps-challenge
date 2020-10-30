# Domain Model for RPS challenge

[README](../README.md)

[Domain Model](domain_model.md)

## Basic Model
for minimum development work to meet user story requirements:

### Interface elements:
- welcome screen
  - Take name as an input - retain for messaging

- gaming screen
  - enable a selection to be made R, P, S

- result screen
  - present the result against the randomised opponent

### Controller requirements:
- move between screens on submissions
- present model layer data as needed by interfaces

### Model layer requirements:
- management of user details
  - 'player' object
    - name property

- creation of 'randomised opponent' selection
  - 'opponent' object (AI / human)
    - name / "computer" property

- comparison against game rules
  - Action object
    - management of 'selection'
  - Game object
    - possible management of 'turn'
    - management of result / game state

- presentation of game outcome
  - option to return to gaming screen - 'another go'

## Assumptions
- no persistent 'score' required for a session, or different sessions
- assumption about local / remote opponent to be made during development
  - no specified requirement for either.
  - initial assumption is local to same machine
    - possible use of keyboard entry (different keys for different players)
- Bonus challenges will be attempted
  - accommodation for Multiplayer
  - accommodation for more complex (but still single round) game logic
- no other user details / functionality is required
  - avatar
  - summary messaging of outcomes, etc.
