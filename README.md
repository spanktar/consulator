# consulator.sh

**Paste overly-complicated license stuff nobody reads here**

WHAT: Quick bash convenience function for Consul

Easy. 
Replace "localhost" with whatever you'd like.
Put into /etc/profile.d/ (or wherever) and source it.

If you use Terraform like I do, add it to all your servers, and
do something like:

`CONSUL_URL="http://${consul_address}:${consul_port}/v1"`

Profit?
