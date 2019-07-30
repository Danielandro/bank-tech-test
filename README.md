# Bank Tech test

## Specification

**Language**: Ruby 2.6.3

**Gems used**:

    * rspec

    * simplecov

    * simplecov-console

### Requirements

- You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
- Deposits, withdrawal.
- Account statement (date, amount, balance) printing.
- Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

### Approach / Models required

| Account             | Transaction               | BankStatement    |
| ------------------- | ------------------------- | ---------------- |
| balance             | date of transaction       | format values    |
| transaction_history | credited amount (if any)  | format statement |
| deposit             | debited amount (if any)   |                  |
| withdraw            | balance after transaction |                  |
| print_statement     |                           |                  |

## Instructions

Clone the repo

`cd` into project directory

Run `bundle install` to install dependencies

To run tests run `rspec`
