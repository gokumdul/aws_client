# AWS API client for Amazon Elastic Block Store

**Generated Dart library from API specification**

*About the service:*
You can use the Amazon Elastic Block Store (Amazon EBS) direct APIs to
create EBS snapshots, write data directly to your snapshots, read data on
your snapshots, and identify the differences or changes between two
snapshots. If you’re an independent software vendor (ISV) who offers backup
services for Amazon EBS, the EBS direct APIs make it more efficient and
cost-effective to track incremental changes on your EBS volumes through
snapshots. This can be done without having to create new volumes from
snapshots, and then use Amazon Elastic Compute Cloud (Amazon EC2) instances
to compare the differences.

You can create incremental snapshots directly from data on-premises into EBS
volumes and the cloud to use for quick disaster recovery. With the ability
to write and read snapshots, you can write your on-premises data to an EBS
snapshot during a disaster. Then after recovery, you can restore it back to
AWS or on-premises from the snapshot. You no longer need to build and
maintain complex mechanisms to copy data to and from Amazon EBS.

This API reference provides detailed information about the actions, data
types, parameters, and errors of the EBS direct APIs. For more information
about the elements that make up the EBS direct APIs, and examples of how to
use them effectively, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html">Accessing
the Contents of an EBS Snapshot</a> in the <i>Amazon Elastic Compute Cloud
User Guide</i>. For more information about the supported AWS Regions,
endpoints, and service quotas for the EBS direct APIs, see <a
href="https://docs.aws.amazon.com/general/latest/gr/ebs-service.html">Amazon
Elastic Block Store Endpoints and Quotas</a> in the <i>AWS General
Reference</i>.

## Links

- [Other AWS libraries](https://github.com/agilord/aws_client/tree/master/generated).
- [Issue tracker](https://github.com/agilord/aws_client/issues).
- [AWS API definitions](https://github.com/aws/aws-sdk-js/tree/master/apis).
