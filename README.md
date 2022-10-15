<div align="center">

# mongodb-tools-awscli

A Docker image with the MongoDB tools and AWS CLI installed.

<img src="https://raw.githubusercontent.com/shini4i/assets/main/src/mongodb-tools-awscli/mongodb.png" alt="Showcase" width="25%">

</div>

## General Information
Currently, the idea is that this image will have a bare minimum required to make a MongoDB backups (mongodb-tools) and upload it to the s3 bucket (awscli). 

The backup script is omitted as it is intended to be mounted from the helm chart, as implementation might differ between various setups.

## Supported MongoDB versions
As per the [MongoDB documentation](https://www.mongodb.com/docs/database-tools/mongodump/#compatibility), the following versions are supported:
- MongoDB 6.0
- MongoDB 5.0
- MongoDB 4.4
- MongoDB 4.2
