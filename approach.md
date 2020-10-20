
# Name of all the branches

1)Master (or Production)

2)Development

3)Testing

## APPROACH


1)Perform compilation and tests on all branches. 

2)Generating jar file.

3)Generating Docker image from it with help of Dockerfile  and then push it to docker hub registry.

4)deploy.yml and service files are used to create deployment and service.

5)Then finally we push to kubernetes cluster.

6)In last stage we are generating a email to confirm the success of our build.
