# ElasticBeanstalkTemplate
Providing an environment for Elastic Benastalk.

## Cfn-template
- vpc-template.yaml  
  Build a VPC with public and private subnets split into two AZs.
- FailoverDNS-template.yaml  
  Build DNS failover within your VPC.  
  This template is not required.
- EB-Template.yaml  
  Build Elastic Benastalk.

## ElasticBeanstalkExtensions
Frequently used Elastic Benastalk config file.  
Create .ebextenstions in the root directory of the application you are deploying.
Create a config file in .ebextenstions.
- python
  | config file | memo |
  | --- | --- |
  | python.conf | Set the paths for wsgi.py and settings.py. <br> Describe with a relative path from the project directory. Use ‘.’ instead of ‘/’ as the directory delimiter. |
  | mysql.conf | Django application with MySQL. <br> Perform migration on deployment. |
  | deployStaticfile.conf | Deploy stack files in your Django application. |