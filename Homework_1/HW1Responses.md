## Homework 1 Responses

1. Why is client diversity important for Ethereum?
If one implementation goes down, has a bug, discovered an exploit, etc. There are other client implementations ready to keep the network running decentralized.  
<br>

2. Where is the full Ethereum state held?
It is stored on every Ethereum client node.  
<br>

3. What is a replay attack? Which two pieces of information can prevent it?
An attacker intercepts a valid data transmission and maliciously retransmits it.
- Nonce (Number Used Once), unique number assigned to each transaction.
- Timestamp, ensures transactions are only valid within a certain time window.
<br>

4. In a contract, how do we know who called a view function?
Through an event emission, we are able to log the msg.sender of the view function.