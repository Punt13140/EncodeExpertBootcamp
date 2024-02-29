# Homework w1 d1

1. Why is client diversity important for Ethereum

Decentralization, more resilience and security.

2. Where is the full Ethereum state held ?

Full nodes ?

3. What is a replay attack ? , which 2 pieces of information can prevent it ?

Rebroadcast of a transaction.

- Chain ID
- TX nonce

4. In a contract, how do we know who called a view function ?

msg.sender.
But seems it's a view function, it cannot alter the blockchain state. View function are often called outside of the blockchain, so msg.sender might not provide meaning full information.
