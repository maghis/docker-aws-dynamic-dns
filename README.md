# docker-aws-dynamic-dns

Updates a route53 subdomain to point to your dynamic IP.

Run the docker with the following env vars:

ZONEID=`id of the zone in route53`
RECORDSET=`name of the subdomain to update`
AWS_ACCESS_KEY_ID=`aws creds`
AWS_SECRET_ACCESS_KEY=`aws creds`
