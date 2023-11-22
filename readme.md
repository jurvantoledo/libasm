## 64-bit [QWORD]
  - RAX — Stores function return values

  - RBX — Base pointer to the data section

  - RCX — Counter for string and loop operations

  - RDX — I/O (input/output) pointer

  - RSI — Source pointer for string operations

  - RDI — Destination pointer for string operations

  - RSP — Stack pointer

  - RBP — Stack frame base pointer

  - RIP — Pointer to next instruction to execute (“instruction pointer”), cannot be directly modified with mov 
          but can indirectly be modified by referencing with operations


## Simple Instructions
  - mov — moves date from one location to another without modification, in the form:

    `mov destination, source`

  - lea — load effective address, calculates indirect address and stores the address (not the memory contents) in the destination

    `lea destination, value`

  - jmp — tells the CPU to jump to a new location, transfers the flow of execution by changing the instruction pointer register

    `jmp destination`

  - add — arithmetic adding, adds the value specified to the value stored in the destination and replaces the destination with the result
    
    `add destination, value`

  - sub — arithmetic subtraction, similar to addition
    
    `sub destination, value`

  - inc — increments destination by 1
    
    `inc destination`

  - dec — decrements destination by 1
    
    `dec destination`